import 'package:injectable/injectable.dart';
import 'package:task_manager_app/data/dto/task/task_dto.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';

@injectable
class TaskRemapper {
  TaskDto toNetworkDto(AllTasksItemEntity task) {
    return TaskDto(
      id: task.id,
      todo: task.todo,
      completed: task.completed,
      userId: task.userId,
      deletedOn: task.deletedOn,
      isDeleted: task.isDeleted,
      isLocal: task.isLocal,
    );
  }

  AllTasksItemEntity fromNetworkDto(TaskDto task) {
    return AllTasksItemEntity(
      todo: task.todo,
      completed: task.completed,
      userId: task.userId,
      deletedOn: task.deletedOn,
      isDeleted: task.isDeleted,
      id: task.id,
      isLocal: task.isLocal,
    );
  }
}
