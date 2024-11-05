import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';

part 'add_task_entity.freezed.dart';

@freezed
class AddTaskEntity with _$AddTaskEntity {
  const factory AddTaskEntity({
    required AllTasksItemEntity allTasksItemEntity,
  }) = _AddTaskEntity;
}
