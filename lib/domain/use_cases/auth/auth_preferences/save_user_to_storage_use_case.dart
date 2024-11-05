import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/entities/auth/user_entity.dart';
import 'package:task_manager_app/domain/preferences/user_storage.dart';

@injectable
class SaveUserToStorageUseCase {
  final UserStorage _userStorage;

  /// Constructor for the SaveUserToStorageUseCase class.
  ///
  /// Requires an instance of [UserStorage] to handle user
  /// storage operation.

  SaveUserToStorageUseCase(this._userStorage);

  Future<void> run(UserEntity userEntity) {
    return _userStorage.setUser(userEntity);
  }
}
