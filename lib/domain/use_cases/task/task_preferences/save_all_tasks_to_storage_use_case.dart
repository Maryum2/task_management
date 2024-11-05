import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';
import 'package:task_manager_app/domain/preferences/task_storage.dart';

@injectable
class SaveAllTasksToStorageUseCase {
  final TaskStorage _taskStorage;

  SaveAllTasksToStorageUseCase(this._taskStorage);

  Future<void> run(List<AllTasksItemEntity> tasks) {
    return _taskStorage.setAllTasks(tasks);
  }
}
