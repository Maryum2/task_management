import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager_app/data/api/base_status.dart';
import 'package:task_manager_app/domain/entities/task/get_all_tasks_entity.dart';
import 'package:task_manager_app/presentation/common/app_button_filled_primary.dart';
import 'package:task_manager_app/presentation/common/app_button_outlined_primary.dart';
import 'package:task_manager_app/presentation/extensions/context_presentation_extensions.dart';
import 'package:task_manager_app/presentation/extensions/presentation_extensions.dart';
import 'package:task_manager_app/presentation/features/task/bloc/task_cubit.dart';
import 'package:task_manager_app/presentation/features/task/widgets/tasks_list_widget.dart';
import 'package:task_manager_app/presentation/resources/app_colors.dart';
import 'package:task_manager_app/presentation/resources/app_strings.dart';

class TaskBodyWidget extends StatelessWidget {
  const TaskBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.select<TaskCubit, BaseStatus>(
      (cubit) => cubit.state.getAllTasksStatus,
    );
    final allTasks = context.select<TaskCubit, List<AllTasksItemEntity>?>(
      (cubit) => cubit.state.allTasks?.allTasksItemEntity,
    );
    if (state.isLoading) {
      return Center(
          child: CircularProgressIndicator(
        color: context.colors.secondary,
      ));
    } else if (state.isSuccess) {
      if (allTasks == null || allTasks.isEmpty) {
        return Center(
          child: Text(context.strings.noTasksYet),
        );
      }
      return Column(
        children: [
          Expanded(
            child: TasksListWidget(
              allTasks: allTasks,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120.0),
            child: AppButtonOutlinedPrimary(
              child: Text(
                context.strings.loadMore,
                style: context.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (context) async {
                context.read<TaskCubit>().loadMoreTasks();
              },
            ).animate().fadeIn(duration: 300.ms).moveY(
                  begin: 30,
                  end: 0,
                  duration: 300.ms,
                  curve: Curves.easeInOut,
                ),
          ),
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
