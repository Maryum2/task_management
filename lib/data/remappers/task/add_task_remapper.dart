import 'package:injectable/injectable.dart';
import 'package:task_manager_app/data/dto/task/task_dto.dart';
import 'package:task_manager_app/domain/entities/task/add_task_entity.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';

@injectable
class AddTaskRemapper {
  AddTaskEntity fromNetworkDto(
    TaskDto? responseDto,
  ) {
    return AddTaskEntity(allTasksItemEntity: _mapTaskDtoToEntity(responseDto));
  }

  // Helper method to map TaskDto to AllTasksItemEntity
  AllTasksItemEntity _mapTaskDtoToEntity(TaskDto? taskDto) {
    return AllTasksItemEntity(
      id: taskDto?.id ?? 0,
      todo: taskDto?.todo ?? '',
      completed: taskDto?.completed ?? false,
      userId: taskDto?.userId ?? 0,
    );
  }
}
