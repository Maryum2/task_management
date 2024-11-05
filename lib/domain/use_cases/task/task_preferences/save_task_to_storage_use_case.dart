import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';
import 'package:task_manager_app/domain/preferences/task_storage.dart';

@injectable
class SaveTaskToStorageUseCase {
  final TaskStorage _taskStorage;

  SaveTaskToStorageUseCase(this._taskStorage);

  Future<void> run(AllTasksItemEntity task) {
    return _taskStorage.setTask(task);
  }
}
