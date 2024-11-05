import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';
import 'package:task_manager_app/presentation/extensions/presentation_extensions.dart';
import 'package:task_manager_app/presentation/features/task/bloc/task_cubit.dart';
import 'package:task_manager_app/presentation/resources/app_colors.dart';

class TaskListItem extends StatelessWidget {
  final AllTasksItemEntity task;

  const TaskListItem({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.todo,
        style: context.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            activeColor: context.colors.secondary,
            value: task.completed,
            onChanged: (bool? value) {
              context.read<TaskCubit>().updateTask(
                    task.id,
                    value,
                  );
            },
          ),
          InkWell(
            onTap: () {
              context.read<TaskCubit>().deleteTask(task.id);
            },
            child: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
