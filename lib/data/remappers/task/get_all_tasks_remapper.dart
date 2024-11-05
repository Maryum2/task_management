import 'package:injectable/injectable.dart';
import 'package:task_manager_app/data/dto/task/get_all_tasks_response.dart';
import 'package:task_manager_app/data/dto/task/task_dto.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';

@injectable
class GetAllTasksRemapper {
  GetAllTasksEntity fromNetworkDto(
    GetAllTasksResponse? responseDto,
  ) {
    // Map each TaskDto to AllTasksItemEntity
    final allTasksItems = responseDto?.data.map((taskDto) {
      return _mapTaskDtoToEntity(taskDto);
    }).toList() ?? [];

    return GetAllTasksEntity(
      total: responseDto?.total ?? 0,
      skip: responseDto?.skip ?? 0,
      limit: responseDto?.limit ?? 0,
      allTasksItemEntity: allTasksItems,
    );
  }

  // Helper method to map TaskDto to AllTasksItemEntity
  AllTasksItemEntity _mapTaskDtoToEntity(TaskDto taskDto) {
    return AllTasksItemEntity(
      id: taskDto.id,
      todo: taskDto.todo,
      completed: taskDto.completed,
      userId: taskDto.userId,
    );
  }
}
