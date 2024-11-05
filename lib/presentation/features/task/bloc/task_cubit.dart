import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:task_manager_app/core/debug/debug_console_app_logger.dart';
import 'package:task_manager_app/data/api/base_status.dart';
import 'package:task_manager_app/data/errors/response_error.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';
import 'package:task_manager_app/domain/use_cases/task/add_task_use_case.dart';
import 'package:task_manager_app/domain/use_cases/task/delete_task_use_case.dart';
import 'package:task_manager_app/domain/use_cases/task/task_preferences/delete_task_from_storage_use_case.dart';
import 'package:task_manager_app/domain/use_cases/task/task_preferences/get_task_from_storage_use_case.dart';
import 'package:task_manager_app/domain/use_cases/task/task_preferences/save_all_tasks_to_storage_use_case.dart';
import 'package:task_manager_app/domain/use_cases/task/task_preferences/save_task_to_storage_use_case.dart';
import 'package:task_manager_app/domain/use_cases/task/task_preferences/update_task_in_storage_use_case.dart';
import 'package:task_manager_app/domain/use_cases/task/update_task_use_case.dart';
import 'package:task_manager_app/domain/use_cases/task/get_all_tasks_use_case.dart';
import 'package:task_manager_app/presentation/features/task/bloc/task_state.dart';

@injectable
class TaskCubit extends Cubit<TaskState> with DebugConsoleAppLogger {
  TaskCubit(
    @factoryParam TaskState? taskState,
    this._getAllTasksUseCase,
    this._addTaskUseCase,
    this._updateTaskUseCase,
    this._deleteTaskUseCase,
    this._saveTaskToStorageUseCase,
    this._getTaskFromStorageUseCase,
    this._deleteTaskFromStorageUseCase,
    this._updateTaskInStorageUseCase,
    this._saveAllTasksToStorageUseCase,
  ) : super(taskState ?? const TaskState());

  final GetAllTasksUseCase _getAllTasksUseCase;
  final AddTaskUseCase _addTaskUseCase;
  final UpdateTaskUseCase _updateTaskUseCase;
  final DeleteTaskUseCase _deleteTaskUseCase;
  final SaveTaskToStorageUseCase _saveTaskToStorageUseCase;
  final GetTaskFromStorageUseCase _getTaskFromStorageUseCase;
  final DeleteTaskFromStorageUseCase _deleteTaskFromStorageUseCase;
  final UpdateTaskInStorageUseCase _updateTaskInStorageUseCase;
  final SaveAllTasksToStorageUseCase _saveAllTasksToStorageUseCase;
  Future<void> getAllTasks() async {
    if (state.getAllTasksStatus.isLoading) {
      return;
    }

    emit(
      state.copyWith(
        getAllTasksStatus: const BaseStatus.loading(),
      ),
    );

    try {
      // Fetch tasks with the current skip and limit
      final allTasksData = await _getAllTasksUseCase.run(
        skip: state.skip,
        limit: state.limit,
      );
      await _saveAllTasksToStorageUseCase.run(allTasksData.allTasksItemEntity!);
      // Update the current skip for the next fetch
      final newSkip = state.skip + state.limit;

      emit(
        state.copyWith(
          getAllTasksStatus: const BaseStatus.success(),
          allTasks: allTasksData, // Update with new data
          skip: newSkip, // Update the skip value
        ),
      );
    } catch (e, s) {
      d(e, stackTrace: s);
      if (isClosed) {
        return;
      }
      final error = ResponseError.from(e);
      emit(
        state.copyWith(
          getAllTasksStatus: BaseStatus.failure(error),
        ),
      );
    }
  }

  // Load more tasks
  Future<void> loadMoreTasks() async {
    if (state.getAllTasksStatus.isLoading) {
      return; // Prevent multiple simultaneous loads
    }

    emit(
      state.copyWith(
        getAllTasksStatus: const BaseStatus.loading(),
      ),
    );

    try {
      // Fetch more tasks with the current skip and limit
      final newTasksData = await _getAllTasksUseCase.run(
        skip: state.skip,
        limit: state.limit,
      );
      await _saveAllTasksToStorageUseCase.run(
          (state.allTasks?.allTasksItemEntity ?? []) +
              (newTasksData.allTasksItemEntity ?? []));
              
      //Following code is adding duplicates
      
      // final updatedTasks = [
      //   ...(state.allTasks?.allTasksItemEntity ?? []), // Current tasks
      //   ...(newTasksData.allTasksItemEntity ?? []), // Newly fetched tasks
      // ];

      // Create a set of existing task IDs to avoid duplicates
      final existingTaskIds =
          state.allTasks?.allTasksItemEntity?.map((task) => task.id).toSet() ??
              {};

      final updatedTasks = <AllTasksItemEntity>[
        ...(state.allTasks?.allTasksItemEntity ?? []), // Current tasks
        for (var newTask in (newTasksData.allTasksItemEntity ?? []))
          if (!existingTaskIds.contains(newTask.id))
            newTask, // Only add if not already present
      ];

      // Update the skip value for the next fetch
      final newSkip =
          state.skip + (newTasksData.allTasksItemEntity?.length ?? 0);

      emit(
        state.copyWith(
          getAllTasksStatus: const BaseStatus.success(),
          allTasks: state.allTasks?.copyWith(
            allTasksItemEntity: updatedTasks.cast<AllTasksItemEntity>(),
          ),
          skip: newSkip,
        ),
      );
    } catch (e, s) {
      d(e, stackTrace: s);
      if (isClosed) {
        return;
      }
      final error = ResponseError.from(e);
      emit(
        state.copyWith(
          getAllTasksStatus: BaseStatus.failure(error),
        ),
      );
    }
  }

  Future<void> addTask(String task, bool? isComplete) async {
    if (state.addTaskStatus.isLoading) {
      return;
    }

    emit(
      state.copyWith(
        addTaskStatus: const BaseStatus.loading(),
      ),
    );

    try {
      final newTask = await _addTaskUseCase.run(
        task: task,
        isCompleted: isComplete!,
      );
      // Add the 'isLocal' flag to your task (for example, you can include it in the task data)
      final taskWithLocalFlag =
          newTask.allTasksItemEntity.copyWith(isLocal: true);

      // Store the new task in preferences
      await _saveTaskToStorageUseCase.run(taskWithLocalFlag);

      // Manually update the task list, including the 'isLocal' flag
      final updatedTasks = [
        taskWithLocalFlag,
        ...state.allTasks?.allTasksItemEntity ?? [],
      ];

      emit(
        state.copyWith(
          addTaskStatus: const BaseStatus.success(),
          allTasks: state.allTasks?.copyWith(
            allTasksItemEntity: updatedTasks.cast<AllTasksItemEntity>(),
          ),
        ),
      );
    } catch (e, s) {
      d(
        e,
        stackTrace: s,
      );
      // Check if the bloc is closed before emitting state
      if (isClosed) {
        return;
      }
      final error = ResponseError.from(e);
      emit(
        state.copyWith(
          addTaskStatus: BaseStatus.failure(error),
        ),
      );
    }
  }

  Future<void> updateTask(int taskId, bool? isComplete) async {
    if (state.editTaskStatus.isLoading) {
      return;
    }

    emit(
      state.copyWith(
        editTaskStatus: const BaseStatus.loading(),
      ),
    );

    try {
      final taskToUpdate = state.allTasks?.allTasksItemEntity
          ?.firstWhere((task) => task.id == taskId);

      if (taskToUpdate?.isLocal ?? false) {
        // Update in local storage
        await _updateTaskInStorageUseCase.run(
          taskToUpdate!.id,
          isComplete!,
        );
        final updatedTasks = state.allTasks?.allTasksItemEntity!.map((task) {
          if (task.id == taskId) {
            return task.copyWith(completed: isComplete);
          }
          return task;
        }).toList();

        emit(state.copyWith(
          editTaskStatus: const BaseStatus.success(),
          allTasks: state.allTasks?.copyWith(
            allTasksItemEntity: updatedTasks,
          ),
        ));
      } else {
        await _updateTaskUseCase.run(
          taskId: taskId,
          isCompleted: isComplete!,
        );
        await _updateTaskInStorageUseCase.run(
          taskToUpdate!.id,
          isComplete,
        );
        final updatedTasks = state.allTasks?.allTasksItemEntity!.map((task) {
          if (task.id == taskId) {
            return task.copyWith(completed: isComplete);
          }
          return task;
        }).toList();

        emit(
          state.copyWith(
            editTaskStatus: const BaseStatus.success(),
            allTasks:
                state.allTasks?.copyWith(allTasksItemEntity: updatedTasks),
          ),
        );
      }
    } catch (e, s) {
      d(
        e,
        stackTrace: s,
      );
      // Check if the bloc is closed before emitting state
      if (isClosed) {
        return;
      }
      final error = ResponseError.from(e);
      emit(
        state.copyWith(
          editTaskStatus: BaseStatus.failure(error),
        ),
      );
    }
  }

  Future<void> deleteTask(int taskId) async {
    if (state.deleteTaskStatus.isLoading) {
      return;
    }

    emit(
      state.copyWith(
        deleteTaskStatus: const BaseStatus.loading(),
      ),
    );

    try {
      final taskToDelete = state.allTasks?.allTasksItemEntity
          ?.firstWhere((task) => task.id == taskId);

      if (taskToDelete?.isLocal ?? false) {
        // Remove from local storage
        await _deleteTaskFromStorageUseCase.run(taskToDelete!.id);
        final updatedTasks = state.allTasks?.allTasksItemEntity
            ?.where((task) => task.id != taskId)
            .toList();

        emit(state.copyWith(
          deleteTaskStatus: const BaseStatus.success(),
          allTasks: state.allTasks?.copyWith(
            allTasksItemEntity: updatedTasks,
          ),
        ));
      } else {
        await _deleteTaskUseCase.run(
          taskId: taskId,
        );
        await _deleteTaskFromStorageUseCase.run(taskToDelete!.id);
        // Update the list of tasks by filtering out the deleted task
        final updatedTasks = state.allTasks?.allTasksItemEntity
            ?.where((task) => task.id != taskId) // Exclude the deleted task
            .toList();

        emit(
          state.copyWith(
            deleteTaskStatus: const BaseStatus.success(),
            allTasks:
                state.allTasks?.copyWith(allTasksItemEntity: updatedTasks),
          ),
        );
      }
    } catch (e, s) {
      d(
        e,
        stackTrace: s,
      );
      // Check if the bloc is closed before emitting state
      if (isClosed) {
        return;
      }
      final error = ResponseError.from(e);
      emit(
        state.copyWith(
          deleteTaskStatus: BaseStatus.failure(error),
        ),
      );
    }
  }

  void updateTaskCompletion({required bool value}) {
    emit(
      state.copyWith(
        isCompleted: value,
      ),
    );
  }

  Future<void> loadTasks() async {
    // Attempt to load tasks from local storage
    final tasks = await _getTaskFromStorageUseCase.run();
    if (tasks.isNotEmpty) {
      // Use local tasks by wrapping them in a GetAllTasksEntity
      final getAllTasksEntity = GetAllTasksEntity(allTasksItemEntity: tasks);

      emit(state.copyWith(
        getAllTasksStatus: const BaseStatus.success(),
        allTasks: getAllTasksEntity,
      ));
    } else {
      // Fetch tasks from API if local storage is empty
      await getAllTasks();
    }
  }

  @override
  String get context => 'TaskCubit';
}
