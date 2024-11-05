import 'package:task_manager_app/domain/entities/auth/user_entity.dart';

abstract class UserStorage {
  Future<UserEntity?> getUser();

  Future<void> setUser(UserEntity user);

  Future<bool> isLoggedIn();

  Future<String?> getAccessToken();

  Future<void> setAccessToken(String accessToken);

  Future<void> clearAll();
}
