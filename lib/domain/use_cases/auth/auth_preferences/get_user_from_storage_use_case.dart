import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/entities/auth/user_entity.dart';
import 'package:task_manager_app/domain/preferences/user_storage.dart';


@injectable
class GetUserFromStorageUseCase {
  final UserStorage _userStorage;

  /// Constructor for the GetUserFromStorageUseCase class.
  ///
  /// Requires an instance of [UserStorage] to handle user
  /// storage operation.

  GetUserFromStorageUseCase(this._userStorage);

  Future<UserEntity?> run() {
    return _userStorage.getUser();
  }
}
