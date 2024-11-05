import 'package:injectable/injectable.dart';
import 'package:task_manager_app/data/data_sources/task/task_http_data_source.dart';
import 'package:task_manager_app/data/models/task/add_task_request.dart';
import 'package:task_manager_app/data/models/task/update_task_request.dart';
import 'package:task_manager_app/data/remappers/task/add_task_remapper.dart';
import 'package:task_manager_app/data/remappers/task/delete_task_remapper.dart';
import 'package:task_manager_app/data/remappers/task/update_task_remapper.dart';
import 'package:task_manager_app/data/remappers/task/get_all_tasks_remapper.dart';
import 'package:task_manager_app/domain/entities/task/add_task_entity.dart';
import 'package:task_manager_app/domain/entities/task/delete_task_entity.dart';
import 'package:task_manager_app/domain/entities/task/update_task_entity.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';
import 'package:task_manager_app/domain/preferences/user_storage.dart';
import 'package:task_manager_app/domain/services/task/task_service.dart';

@Injectable(as: TaskService)
class TaskServiceImpl implements TaskService {
  TaskServiceImpl(
    this._taskHttpDataSource,
    this._getAllTasksRemapper,
    this._addTaskRemapper,
    this._updateTaskRemapper,
    this._deleteTaskRemapper,
    this._userStorage,
  );

  final TaskHttpDataSource _taskHttpDataSource;
  final GetAllTasksRemapper _getAllTasksRemapper;
  final AddTaskRemapper _addTaskRemapper;
  final UpdateTaskRemapper _updateTaskRemapper;
  final DeleteTaskRemapper _deleteTaskRemapper;
  final UserStorage _userStorage;

  @override
  Future<GetAllTasksEntity> getAllTask({
    required int skip,
    required int limit,
  }) async {
    final result = await _taskHttpDataSource.getAllTasks(
      limit,
      skip,
    );
    return _getAllTasksRemapper.fromNetworkDto(
      result,
    );
  }

  @override
  Future<AddTaskEntity> addTask({
    required String task,
    required bool isCompleted,
  }) async {
    final userEntity = await _userStorage.getUser();
    final addTaskRequest = AddTaskRequest(
      todo: task,
      userId: userEntity!.id,
      completed: isCompleted,
    );
    final result = await _taskHttpDataSource.addTask(addTaskRequest);
    return _addTaskRemapper.fromNetworkDto(
      result,
    );
  }

  @override
  Future<UpdateTaskEntity> updateTask({
    required int taskId,
    required bool isCompleted,
  }) async {
    final updateTaskRequest = UpdateTaskRequest(
      completed: isCompleted,
    );
    final result = await _taskHttpDataSource.updateTask(
      taskId,
      updateTaskRequest,
    );
    return _updateTaskRemapper.fromNetworkDto(
      result,
    );
  }

  @override
  Future<DeleteTaskEntity> deleteTask({required int taskId}) async {
    final result = await _taskHttpDataSource.deleteTask(
      taskId,
    );
    return _deleteTaskRemapper.fromNetworkDto(
      result,
    );
  }
}
