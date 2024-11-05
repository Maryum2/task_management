import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/data/dto/auth/user_dto.dart';

part 'user_login_response.freezed.dart';
part 'user_login_response.g.dart';

@freezed
class UserLoginResponse with _$UserLoginResponse {
  const factory UserLoginResponse({
    required UserDto data,
  }) = _UserLoginResponse;

  factory UserLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$UserLoginResponseFromJson(json);
}
