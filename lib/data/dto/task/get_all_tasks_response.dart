import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/data/dto/task/task_dto.dart';

part 'get_all_tasks_response.freezed.dart';
part 'get_all_tasks_response.g.dart';

@freezed
class GetAllTasksResponse with _$GetAllTasksResponse {
  const factory GetAllTasksResponse({
    required int total,
    required int skip,
    required int limit,
    @JsonKey(name: 'todos') required List<TaskDto> data,
  }) = _GetAllTasksResponse;

  factory GetAllTasksResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllTasksResponseFromJson(json);
}
