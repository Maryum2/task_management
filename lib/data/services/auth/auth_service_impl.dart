import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:task_manager_app/data/data_sources/auth/auth_http_data_source.dart';
import 'package:task_manager_app/data/models/auth/user_login_request.dart';
import 'package:task_manager_app/data/remappers/auth/user_login_remapper.dart';
import 'package:task_manager_app/domain/entities/auth/user_entity.dart';
import 'package:task_manager_app/domain/services/auth/auth_service.dart';

@Injectable(as: AuthService)
class AuthServiceImpl implements AuthService {
  AuthServiceImpl(
    this._authHttpDataSource,
    this._userLoginRemapper,
  );

  final AuthHttpDataSource _authHttpDataSource;
  final UserLoginRemapper _userLoginRemapper;

  @override
  Future<UserEntity> login({
    required String username,
    required String password,
  }) async {
    final loginRequest = UserLoginRequest(
      username: username,
      password: password,
    );
   
    final result = await _authHttpDataSource.login(loginRequest);

    return _userLoginRemapper.fromNetworkDto(
      result,
    );
  }
}
