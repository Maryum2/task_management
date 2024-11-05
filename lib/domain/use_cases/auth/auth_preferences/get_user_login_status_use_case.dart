import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/preferences/user_storage.dart';

@injectable
class GetUserLoginStatusUseCase {
  final UserStorage _userStorage;

  /// Constructor for the GetUserLoginStatusUseCase class.
  ///
  /// Requires an instance of [UserStorage] to handle auth
  /// preferences operation.

  GetUserLoginStatusUseCase(this._userStorage);

  Future<bool> run() {
    return _userStorage.isLoggedIn();
  }
}
