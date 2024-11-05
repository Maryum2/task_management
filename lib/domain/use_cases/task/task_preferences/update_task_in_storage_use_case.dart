import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/preferences/task_storage.dart';

@injectable
class UpdateTaskInStorageUseCase {
  final TaskStorage _taskStorage;

  UpdateTaskInStorageUseCase(this._taskStorage);

  Future<void> run(
    int taskId,
    bool completed,
  ) {
    return _taskStorage.updateTask(
      taskId,
      completed,
    );
  }
}
