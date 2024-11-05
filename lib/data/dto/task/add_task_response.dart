import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/data/dto/task/task_dto.dart';

part 'add_task_response.freezed.dart';
part 'add_task_response.g.dart';

@freezed
class AddTaskResponse with _$AddTaskResponse {
  const factory AddTaskResponse({
    required TaskDto data,
  }) = _AddTaskResponse;

  factory AddTaskResponse.fromJson(Map<String, dynamic> json) =>
      _$AddTaskResponseFromJson(json);
}
