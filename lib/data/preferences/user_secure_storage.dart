import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:task_manager_app/core/debug/debug_console_app_logger.dart';
import 'package:task_manager_app/data/dto/auth/user_dto.dart';
import 'package:task_manager_app/data/remappers/auth/user_remapper.dart';
import 'package:task_manager_app/domain/entities/auth/user_entity.dart';
import 'package:task_manager_app/domain/preferences/user_storage.dart';

/// **UserSecureStorage**
///
/// A singleton class implementing `UserStorage` that provides secure storage for user-related data.
/// It utilizes the `FlutterSecureStorage` plugin for securely storing sensitive information.
///
/// **Usage:**
///
/// ```dart
/// final userSecureStorage = UserSecureStorage();
/// await userSecureStorage.setUser(userEntity);
/// UserEntity? currentUser = await userSecureStorage.getUser();
/// ```
///
/// **Methods:**
///
/// 1. `setUser`: Stores user information securely.
///    - Takes a `UserEntity` as a parameter.
///    - Returns a `Future<void>`.
///    - On success, user information is stored securely for future retrieval.
///
/// 2. `getUser`: Retrieves user information securely.
///    - Returns a `Future<UserEntity>` or `null` if user data is not available.
///    - Retrieves and decodes the stored user information and returns it as a `UserEntity`.
///
/// 3. `isLoggedIn`: Checks if the user is currently logged in.
///    - Returns a `Future<bool>`.
///    - Checks if a valid session ID is available for the current user.
///
/// 4. `setAccessToken`: Stores the user's access token securely.
///    - Takes a `String` access token as a parameter.
///    - Returns a `Future<void>`.
///    - Stores the provided access token securely for future retrieval.
///
/// 5. `getAccessToken`: Retrieves the user's access token securely.
///    - Returns a `Future<String>` or `null` if the access token is not available.
///    - Retrieves and returns the stored access token for the current user.
///

///
/// 8. `clearAll`: Clears all stored user data.
///    - Returns a `Future<void>`.
///    - Deletes all stored user-related data, providing a clean slate.

@LazySingleton(as: UserStorage)
class UserSecureStorage with DebugConsoleAppLogger implements UserStorage {
  UserSecureStorage(
    this._secureStorage,
    this._userRemapper,
  );

  final FlutterSecureStorage _secureStorage;
  final UserRemapper _userRemapper;

  static const String _prefix = 'user_data';
  static const String _userJsonKey = '${_prefix}_user_json';
  static const String _accessTokenJsonKey = '${_prefix}_user_access_token';

  @override
  Future<void> setUser(UserEntity user) async {
    try {
      final dto = _userRemapper.toNetworkDto(user);
      i('Logged In User $dto');
      return _secureStorage.write(
        key: _userJsonKey,
        value: jsonEncode(dto.toJson()),
      );
    } catch (_) {}
  }

  @override
  Future<UserEntity?> getUser() async {
    try {
      final userJson = await _secureStorage.read(key: _userJsonKey);
      final dto = UserDto.fromJson(json.decode(userJson!));
      return _userRemapper.fromNetworkDto(dto);
    } catch (_) {
      return null;
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    try {
      final accessToken = await getAccessToken();
      return accessToken != null;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<void> setAccessToken(String accessToken) async {
    if (kDebugMode) {
      print('this is access token $accessToken');
    }
    try {
      return _secureStorage.write(
        key: _accessTokenJsonKey,
        value: accessToken,
      );
    } catch (_) {}
  }

  @override
  Future<String?> getAccessToken() async {
    try {
      return _secureStorage.read(key: _accessTokenJsonKey);
    } catch (_) {
      return null;
    }
  }

  @override
  Future<void> clearAll() async {
    await _secureStorage.deleteAll();
  }

  @override
  String get context => 'UserSecureStorage';
}
