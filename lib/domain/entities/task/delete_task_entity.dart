import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';

part 'delete_task_entity.freezed.dart';

@freezed
class DeleteTaskEntity with _$DeleteTaskEntity {
  const factory DeleteTaskEntity({
    required AllTasksItemEntity allTasksItemEntity,
  }) = _DeleteTaskEntity;
}
