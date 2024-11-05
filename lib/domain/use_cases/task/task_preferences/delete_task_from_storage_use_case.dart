import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/preferences/task_storage.dart';

@injectable
class DeleteTaskFromStorageUseCase {
  final TaskStorage _taskStorage;

  DeleteTaskFromStorageUseCase(this._taskStorage);

  Future<void> run(int taskId) {
    return _taskStorage.deleteTask(taskId);
  }
}
