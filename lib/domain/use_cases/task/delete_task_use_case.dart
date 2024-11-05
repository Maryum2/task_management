import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/entities/task/delete_task_entity.dart';
import 'package:task_manager_app/domain/services/task/task_service.dart';

@injectable
class DeleteTaskUseCase {
  final TaskService _taskService;
  DeleteTaskUseCase(this._taskService);

  Future<DeleteTaskEntity> run({required int taskId}) {
    return _taskService.deleteTask(taskId:taskId,);
  }
}
