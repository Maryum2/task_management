import 'package:task_manager_app/domain/entities/task/add_task_entity.dart';
import 'package:task_manager_app/domain/entities/task/delete_task_entity.dart';
import 'package:task_manager_app/domain/entities/task/update_task_entity.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';

abstract class TaskService {
  Future<GetAllTasksEntity> getAllTask({
    required int skip,
    required int limit,
  });
  Future<AddTaskEntity> addTask({
    required String task,
    required bool isCompleted,
  });
  Future<UpdateTaskEntity> updateTask({
    required int taskId,
    required bool isCompleted,
  });
  Future<DeleteTaskEntity> deleteTask({required int taskId});
}
