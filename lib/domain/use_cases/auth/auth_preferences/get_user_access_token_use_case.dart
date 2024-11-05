import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/preferences/user_storage.dart';

@injectable
class GetUserAccessTokenUseCase {
  final UserStorage _userStorage;

  /// Constructor for the GetAccessTokenUseCase class.
  ///
  /// Requires an instance of [UserStorage] to handle user
  /// storage operation.

  GetUserAccessTokenUseCase(this._userStorage);

  Future<String?> run() {
    return _userStorage.getAccessToken();
  }
}
