import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:task_manager_app/data/api/api_config.dart';
import 'package:task_manager_app/data/api/interceptors/http_auth_interceptor.dart';
import 'package:task_manager_app/data/app_config.dart';

/// For authentication (sign in).
const dioForAuthentication = 'FOR_AUTHENTICATION';

/// For the authenticated endpoints.
const dioAuthenticated = 'AUTHENTICATED_DIO';

Dio _createBaseDio(ApiConfig apiConfig, AppConfig appConfig) {
  final dio = Dio()
    ..httpClientAdapter = HttpClientAdapter()
    ..options.baseUrl = apiConfig.apiUrl
    ..options.contentType = 'application/json';

  // final apimSubsKey = appConfig.apiKey;

  // if (apimSubsKey != null) {
  //   // adding the sbuscription key if there is any
  //   dio.options.headers['Key'] = apimSubsKey;
  //   dio.options.headers['platform'] = 'Mobile';
  //   dio.options.headers['Key'] = apimSubsKey;
  //   dio.options.headers['platform'] = 'Mobile';
  // }
  return dio;
}

@module
abstract class HttpModule {
  @singleton
  @Named(dioForAuthentication)
  Dio getForAuthenticationDio(
    ApiConfig apiConfig,
    AppConfig appConfig,
  ) {
    final dio = _createBaseDio(apiConfig, appConfig)
      ..interceptors.addAll(
        [
          PrettyDioLogger(requestBody: true, requestHeader: true),
        ],
      );
    return dio;
  }

  @singleton
  @Named(dioAuthenticated)
  Dio getAuthenticatedDio(
    ApiConfig apiConfig,
    AppConfig appConfig,
    HttpAuthInterceptor authInterceptor,
  ) {
    final dio = _createBaseDio(apiConfig, appConfig)
      ..interceptors.addAll(
        [
          authInterceptor,
          PrettyDioLogger(requestBody: true, requestHeader: true),
        ],
      );
    return dio;
  }
}
