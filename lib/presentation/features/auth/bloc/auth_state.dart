import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/data/api/base_status.dart';
import 'package:task_manager_app/domain/entities/auth/user_entity.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState({
    @Default(BaseStatus.initial()) BaseStatus loginStatus,
    @Default(BaseStatus.initial()) BaseStatus logOutStatus,
    @Default(SessionState.initial()) SessionState sessionState,
    @Default(false) bool previouslyLoggedIn,
    UserEntity? user,
  }) = _AuthState;
}
@freezed
class SessionState with _$SessionState {
  const factory SessionState.initial() = Initial;
  const factory SessionState.invalid() = Invalid;
  const factory SessionState.valid() = Valid;
}