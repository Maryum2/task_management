import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/entities/task/update_task_entity.dart';
import 'package:task_manager_app/domain/services/task/task_service.dart';

@injectable
class UpdateTaskUseCase {
  final TaskService _taskService;
  UpdateTaskUseCase(this._taskService);

  Future<UpdateTaskEntity> run({
    required int taskId,
    required bool isCompleted,
  }) {
    return _taskService.updateTask(
      taskId: taskId,
      isCompleted: isCompleted,
    );
  }
}
