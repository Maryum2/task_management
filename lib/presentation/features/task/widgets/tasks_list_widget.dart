import 'package:flutter/widgets.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';
import 'package:task_manager_app/presentation/features/task/widgets/task_list_item.dart';

class TasksListWidget extends StatelessWidget {
  final List<AllTasksItemEntity> allTasks;
  const TasksListWidget({
    super.key,
    required this.allTasks,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allTasks.length,
      itemBuilder: (context, index) {
        final task = allTasks[index];
        return TaskListItem(
          task: task,
        );
      },
    );
  }
}
