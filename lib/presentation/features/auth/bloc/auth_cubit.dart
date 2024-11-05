import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:task_manager_app/core/debug/debug_console_app_logger.dart';
import 'package:task_manager_app/data/api/base_status.dart';
import 'package:task_manager_app/data/errors/response_error.dart';
import 'package:task_manager_app/domain/entities/auth/user_entity.dart';
import 'package:task_manager_app/domain/use_cases/auth/auth_preferences/get_user_access_token_use_case.dart';
import 'package:task_manager_app/domain/use_cases/auth/auth_preferences/get_user_from_storage_use_case.dart';
import 'package:task_manager_app/domain/use_cases/auth/auth_preferences/get_user_login_status_use_case.dart';
import 'package:task_manager_app/domain/use_cases/auth/auth_preferences/save_user_access_token_to_storage_use_case.dart';
import 'package:task_manager_app/domain/use_cases/auth/auth_preferences/save_user_to_storage_use_case.dart';
import 'package:task_manager_app/domain/use_cases/auth/user_login_use_case.dart';
import 'package:task_manager_app/presentation/features/auth/bloc/auth_change_notifier.dart';
import 'package:task_manager_app/presentation/features/auth/bloc/auth_change_notifier_state.dart';
import 'package:task_manager_app/presentation/features/auth/bloc/auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> with DebugConsoleAppLogger {
  AuthCubit(
    @factoryParam AuthState? authState,
    this._authChangeNotifier,
    this._userLoginUseCase,
    this._saveUserToStorageUseCase,
    this._saveAccessTokenToStorageUseCase,
    this._getUserLoginStatusUseCase,
    this._getUserFromStorageUseCase,
    this._getUserAccessTokenUseCase,
  ) : super(authState ?? const AuthState()) {
    _authChangeNotifier.addlistener(onAuthChangeNotification);
  }
  final AuthChangeNotifier _authChangeNotifier;
  final UserLoginUseCase _userLoginUseCase;
  final SaveUserToStorageUseCase _saveUserToStorageUseCase;
  final SaveUserAccessTokenToStorageUseCase _saveAccessTokenToStorageUseCase;
  final GetUserLoginStatusUseCase _getUserLoginStatusUseCase;
  final GetUserFromStorageUseCase _getUserFromStorageUseCase;
  final GetUserAccessTokenUseCase _getUserAccessTokenUseCase;
  Future<void> login({
    required String username,
    required String password,
  }) async {
    if (state.loginStatus.isLoading) {
      return;
    }

    emit(
      state.copyWith(
        loginStatus: const BaseStatus.loading(),
      ),
    );

    try {
      final loginData = await _userLoginUseCase.run(
        username: username,
        password: password,
      );
     
      if (loginData.accessToken.isEmpty) {
        return;
      }
      await _saveAccessTokenToStorageUseCase.run(loginData.accessToken);
      await _saveUserToStorageUseCase.run(loginData);
      _authChangeNotifier.notify(
        AuthChangeNotifierState.login(loginData),
      );

      emit(
        state.copyWith(
          loginStatus: const BaseStatus.success(),
          user: loginData,
          previouslyLoggedIn: true,
        ),
      );
    } catch (e, s) {
      d(
        e,
        stackTrace: s,
      );
      // Check if the bloc is closed before emitting state
      if (isClosed) {
        return;
      }
      final error = ResponseError.from(e);
      emit(
        state.copyWith(
          loginStatus: BaseStatus.failure(error),
        ),
      );
    }
  }

  void onAuthChangeNotification(AuthChangeNotifierState changeState) {
    d(changeState);
    changeState.when(
      logOutUser: () {
        // Check if the bloc is closed before emitting state
        if (isClosed) {
          return;
        }

        emit(
          const AuthState().copyWith(
            sessionState: const SessionState.invalid(),
          ),
        );
      },
      login: (UserEntity? user) {
        initReturningUserState();
        // Check if the bloc is closed before emitting state
        if (isClosed) {
          return;
        }
        emit(
          const AuthState().copyWith(
            user: user,
          ),
        );
      },
    );
  }

  Future<void> initReturningUserState() async {
    final isPreviouslyLoggedIn = await _getUserLoginStatusUseCase.run();
    final user = await _getUserFromStorageUseCase.run();
    final accessToken = await _getUserAccessTokenUseCase.run();
    if (accessToken == null) {
      emit(
        state.copyWith(
          previouslyLoggedIn: false,
        ),
      );
      return;
    }
    emit(
      state.copyWith(
        previouslyLoggedIn: isPreviouslyLoggedIn,
        user: user,
      ),
    );

    i('Is Previously Logged In $isPreviouslyLoggedIn');
  }

  @override
  Future<void> close() {
    _authChangeNotifier.removelistener(onAuthChangeNotification);
    return super.close();
  }

  @override
  String get context => 'AuthCubit';
}
