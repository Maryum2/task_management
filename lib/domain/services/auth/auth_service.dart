import 'package:task_manager_app/domain/entities/auth/user_entity.dart';

/// AuthService is an abstract class representing the authentication service
/// within a Flutter application.
///
/// This class defines a contract for handling user authentication,
/// specifically for login using a username and password.
abstract class AuthService {
  Future<UserEntity> login({
    required String username,
    required String password,
  });
}
