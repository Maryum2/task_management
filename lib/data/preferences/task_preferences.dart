import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:injectable/injectable.dart';
import 'package:task_manager_app/data/remappers/task/task_remapper.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';
import 'package:task_manager_app/domain/preferences/task_storage.dart';
import 'package:task_manager_app/data/dto/task/task_dto.dart';

@LazySingleton(as: TaskStorage)
class TaskPreferences implements TaskStorage {
  TaskPreferences(
    this._preferences,
    this._taskRemapper,
  );

  final SharedPreferences _preferences;

  static const String _tasksKey = 'tasks';
  final TaskRemapper _taskRemapper;

  @override
  Future<List<AllTasksItemEntity>> setAllTasks(
      List<AllTasksItemEntity> tasks) async {
    // Convert tasks to TaskDto for storage
    final List<TaskDto> taskDtos = tasks.map((task) {
      return TaskDto(
        id: task.id,
        todo: task.todo,
        completed: task.completed,
        userId: task.userId,
        isLocal: task.isLocal,
      );
    }).toList();

    // Save the tasks in SharedPreferences
    await _preferences.setString(
      _tasksKey,
      jsonEncode(taskDtos.map((dto) => dto.toJson()).toList()),
    );

    return tasks;
  }

  @override
  Future<List<AllTasksItemEntity>> getTasks() async {
    final tasksJson = _preferences.getString(_tasksKey);
    if (tasksJson == null) return [];

    final List<dynamic> jsonList = jsonDecode(tasksJson);
    // Map each JSON object to TaskDto and then to AllTasksItemEntity
    return jsonList.map((json) {
      final taskDto = TaskDto.fromJson(json);
      return _taskRemapper.fromNetworkDto(
          taskDto); // Assuming you have a method to convert TaskDto to AllTasksItemEntity
    }).toList();
  }

  @override
  Future<void> setTask(AllTasksItemEntity task) async {
    final tasks = await getTasks();
    tasks.removeWhere((t) => t.id == task.id); // Ensure unique task IDs
    tasks.add(task);

    // Convert tasks back to TaskDto for storage
    await _preferences.setString(
        _tasksKey,
        jsonEncode(tasks
            .map((t) => TaskDto(
                  id: t.id,
                  todo: t.todo,
                  completed: t.completed,
                  userId: t.userId,
                  isLocal: t.isLocal,
                ).toJson())
            .toList()));
  }

  @override
  Future<void> deleteTask(int taskId) async {
    final tasks = await getTasks();
    tasks.removeWhere((task) => task.id == taskId);

    // Convert tasks back to TaskDto for storage
    await _preferences.setString(
        _tasksKey,
        jsonEncode(tasks
            .map((t) => TaskDto(
                  id: t.id,
                  todo: t.todo,
                  completed: t.completed,
                  userId: t.userId,
                  isLocal: t.isLocal,
                ).toJson())
            .toList()));
  }

  @override
  Future<void> clearAll() async {
    await _preferences.remove(_tasksKey);
  }

  @override
  Future<void> updateTask(int taskId, bool completed) async {
    final tasks = await getTasks();

    // Find the task by its ID
    final taskIndex = tasks.indexWhere((task) => task.id == taskId);

    if (taskIndex != -1) {
      // Update the completed field of the found task
      tasks[taskIndex] = tasks[taskIndex].copyWith(completed: completed);

      // Convert tasks back to TaskDto for storage
      await _preferences.setString(
          _tasksKey,
          jsonEncode(tasks
              .map((t) => TaskDto(
                    id: t.id,
                    todo: t.todo,
                    completed: t.completed,
                    userId: t.userId,
                    isLocal: t.isLocal,
                  ).toJson())
              .toList()));
    } else {
      // Handle the case where the task is not found (optional)
      throw Exception('Task with ID $taskId not found.');
    }
  }
}
