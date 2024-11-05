import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/preferences/user_storage.dart';

@injectable
class SaveUserAccessTokenToStorageUseCase {
  final UserStorage _userStorage;

  /// Constructor for the SaveUserAccessTokenToStorageUseCase class.
  ///
  /// Requires an instance of [UserStorage] to handle user
  /// storage operation.

  SaveUserAccessTokenToStorageUseCase(this._userStorage);

  Future<void> run(String accessToken) {
    return _userStorage.setAccessToken(accessToken);
  }
}
