import 'package:injectable/injectable.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';
import 'package:task_manager_app/domain/preferences/task_storage.dart';

@injectable
class GetTaskFromStorageUseCase {
  final TaskStorage _taskStorage;

  GetTaskFromStorageUseCase(this._taskStorage);

  Future<List<AllTasksItemEntity>> run() {
    return _taskStorage.getTasks();
  }
}
