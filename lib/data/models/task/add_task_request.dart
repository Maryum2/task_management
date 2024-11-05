import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_task_request.freezed.dart';
part 'add_task_request.g.dart';

@freezed
class AddTaskRequest with _$AddTaskRequest {
  const factory AddTaskRequest({
    required String todo,
    @Default(false) bool completed,
    required int userId,
  }) = _AddTaskRequest;

  factory AddTaskRequest.fromJson(Map<String, dynamic> json) =>
      _$AddTaskRequestFromJson(json);
}
