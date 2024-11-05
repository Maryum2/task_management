import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/data/dto/task/task_dto.dart';

part 'delete_task_response.freezed.dart';
part 'delete_task_response.g.dart';

@freezed
class DeleteTaskResponse with _$DeleteTaskResponse {
  const factory DeleteTaskResponse({
    required TaskDto data,
  }) = _DeleteTaskResponse;

  factory DeleteTaskResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteTaskResponseFromJson(json);
}
