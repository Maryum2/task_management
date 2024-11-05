import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';

part 'update_task_entity.freezed.dart';

@freezed
class UpdateTaskEntity with _$UpdateTaskEntity {
  const factory UpdateTaskEntity({
    required AllTasksItemEntity allTasksItemEntity,
  }) = _UpdateTaskEntity;
}
