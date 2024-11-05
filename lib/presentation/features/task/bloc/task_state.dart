import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/data/api/base_status.dart';
import 'package:task_manager_app/domain/entities/task/update_task_entity.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';

part 'task_state.freezed.dart';

@freezed
class TaskState with _$TaskState {
  const TaskState._();
  const factory TaskState({
    @Default(BaseStatus.initial()) BaseStatus getAllTasksStatus,
    @Default(BaseStatus.initial()) BaseStatus addTaskStatus,
    @Default(BaseStatus.initial()) BaseStatus editTaskStatus,
    @Default(BaseStatus.initial()) BaseStatus deleteTaskStatus,
    GetAllTasksEntity? allTasks,
    UpdateTaskEntity? editTask,
    @Default(false) bool isCompleted,
    @Default(0) int skip, 
    @Default(3) int limit, 
  }) = _TaskState;
}
