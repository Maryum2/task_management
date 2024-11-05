import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/data/errors/response_error.dart';

part 'api_error.freezed.dart';
part 'api_error.g.dart';

///The BE should provide one unique code for each error, in this case the
///error is being provided through errorName so we create an Enum for each
///code we are aware of with a default value to unknown

@freezed
class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    int? statusCode,
    String? message,
    required bool success,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}

//*************** Extensions ***************/

extension ErrorResponseExtensions on ErrorResponse {
  ResponseError getResponseErrorType() {
    return ResponseError.badRequest(message);
  }
}