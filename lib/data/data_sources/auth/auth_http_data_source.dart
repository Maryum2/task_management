import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:task_manager_app/data/api/api_config.dart';
import 'package:task_manager_app/data/dto/auth/user_dto.dart';
import 'package:task_manager_app/data/models/auth/user_login_request.dart';
import 'package:task_manager_app/injection/http_module.dart';

part 'auth_http_data_source.g.dart';

@RestApi()
@injectable
abstract class AuthHttpDataSource {
  @factoryMethod
  factory AuthHttpDataSource(@Named(dioAuthenticated) Dio dio) =
      _AuthHttpDataSource;

  @POST(ApiConfig.login)
  Future<UserDto> login(
    @Body() UserLoginRequest body,
  );
}
