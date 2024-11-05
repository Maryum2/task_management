import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';

abstract class TaskStorage {
  Future<List<AllTasksItemEntity>> getTasks();
  Future<void> setTask(AllTasksItemEntity task);
  Future<void> setAllTasks(List<AllTasksItemEntity> tasks);
  Future<void> deleteTask(int taskId);
  Future<void> updateTask(
    int taskId,
    bool completed,
  );
  Future<void> clearAll();
}
