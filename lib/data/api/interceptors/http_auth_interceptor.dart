import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/preferences/user_storage.dart';


@injectable
class HttpAuthInterceptor extends QueuedInterceptor {
  HttpAuthInterceptor(
    this._userStorage,
  //  this._authChangeNotifier,
  );

  final UserStorage _userStorage;
  // final AuthChangeNotifier _authChangeNotifier;

  // Future<String?> _getAccessToken() async {
  //   return _userStorage.getAccessToken();
  // }

  Future<void> _setAuthHeader(RequestOptions options) async {
    // Get access token
  //final accessToken = await _getAccessToken();

   // if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer 12345';
   // }
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    await _setAuthHeader(options);

    handler.next(options);
  }

  // @override
  // void onResponse(Response response, ResponseInterceptorHandler handler) {
  //   // this checks if there is not content so it does not return an error instead
  //   // it rejects the response with [DioException.badResponse]
  //   if (response.statusCode == 204) {
  //     handler.reject(
  //       DioException.badResponse(
  //         statusCode: 204,
  //         requestOptions: response.requestOptions,
  //         response: response,
  //       ),
  //     );
  //   } else {
  //     super.onResponse(response, handler);
  //   }
  // }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      // _authChangeNotifier.notify(
      //   const AuthChangeNotificationState.logOutUser(),
      // );
    }
    super.onError(err, handler);
  }
}
