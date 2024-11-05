import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/data/dto/task/task_dto.dart';

part 'edit_task_response.freezed.dart';
part 'edit_task_response.g.dart';

@freezed
class EditTaskResponse with _$EditTaskResponse {
  const factory EditTaskResponse({
    required TaskDto data,
  }) = _EditTaskResponse;

  factory EditTaskResponse.fromJson(Map<String, dynamic> json) =>
      _$EditTaskResponseFromJson(json);
}
