import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/preferences/user_storage.dart';


@injectable
class ClearUserStorageUseCase {
  final UserStorage _userStorage;

  /// Constructor for the ClearUserStorageUseCase class.
  ///
  /// Requires an instance of [UserStorage] to handle user
  /// storage operation.

  ClearUserStorageUseCase(this._userStorage);

  Future<void> run() {
    return _userStorage.clearAll();
  }
}
