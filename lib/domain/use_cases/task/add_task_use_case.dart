import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/entities/task/add_task_entity.dart';
import 'package:task_manager_app/domain/services/task/task_service.dart';

@injectable
class AddTaskUseCase {
  final TaskService _taskService;
  AddTaskUseCase(this._taskService);

  Future<AddTaskEntity> run({
    required String task,
    required bool isCompleted,
  }) {
    return _taskService.addTask(
      task: task,
      isCompleted: isCompleted,
    );
  }
}
