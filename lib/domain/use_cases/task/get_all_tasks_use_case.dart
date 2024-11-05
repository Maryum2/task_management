import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';
import 'package:task_manager_app/domain/services/task/task_service.dart';

@injectable
class GetAllTasksUseCase {
  final TaskService _taskService;
  GetAllTasksUseCase(this._taskService);

  Future<GetAllTasksEntity> run({
    required int skip,
    required int limit,
  }) {
    return _taskService.getAllTask(skip:skip,limit:limit,);
  }
}
