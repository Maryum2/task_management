import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/entities/auth/user_entity.dart';
import 'package:task_manager_app/domain/services/auth/auth_service.dart';

@injectable
class UserLoginUseCase {
  final AuthService _authService;

  /// Constructor for the User login use case class.
  ///
  /// Requires an instance of [AuthService] to handle authentication operations.
  UserLoginUseCase(this._authService);

  Future<UserEntity> run({
    required String username,
    required String password,
  }) {
    return _authService.login(
      username: username,
      password: password,
    );
  }
}
