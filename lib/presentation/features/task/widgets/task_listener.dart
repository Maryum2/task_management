import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_app/data/errors/response_error.dart';
import 'package:task_manager_app/presentation/extensions/presentation_extensions.dart';
import 'package:task_manager_app/presentation/features/task/bloc/task_cubit.dart';
import 'package:task_manager_app/presentation/features/task/bloc/task_state.dart';
import 'package:task_manager_app/presentation/resources/app_strings.dart';

class TaskListener extends StatelessWidget {
  const TaskListener({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TaskCubit, TaskState>(
          listenWhen: (previous, current) {
            return previous.getAllTasksStatus != current.getAllTasksStatus;
          },
          listener: (context, state) {
            state.editTaskStatus.maybeWhen(
              loading: (_) {
                context.showTaskLoadingDialog();
              },
              failure: (error) async {
                context.maybePop();
                if (!context.mounted) {
                  return;
                }

                final errorMessage = error.getErrorMessage();
                if (errorMessage == null || errorMessage.isEmpty) {
                  return;
                }
                context.showErrorToast(
                  errorMessage,
                );
              },
              success: (_) async {
                context.maybePop();
                if (!context.mounted) {
                  return;
                }
              },
              orElse: () async {
                context.maybePop();
                if (!context.mounted) {
                  return;
                }
              },
            );
          },
        ),
        BlocListener<TaskCubit, TaskState>(
          listenWhen: (previous, current) {
            return previous.editTaskStatus != current.editTaskStatus;
          },
          listener: (context, state) {
            state.editTaskStatus.maybeWhen(
              loading: (_) {
                context.showTaskLoadingDialog();
              },
              failure: (error) async {
                context.maybePop();
                if (!context.mounted) {
                  return;
                }

                final errorMessage = error.getErrorMessage();
                if (errorMessage == null || errorMessage.isEmpty) {
                  return;
                }
                context.showErrorToast(
                  errorMessage,
                );
              },
              success: (_) async {
                context.maybePop();
                if (!context.mounted) {
                  return;
                }

                context.showSuccessToast(
                  context.strings.updateTaskSuccessfully,
                );
              },
              orElse: () async {
                context.maybePop();
                if (!context.mounted) {
                  return;
                }
              },
            );
          },
        ),
        BlocListener<TaskCubit, TaskState>(
          listenWhen: (previous, current) {
            return previous.deleteTaskStatus != current.deleteTaskStatus;
          },
          listener: (context, state) {
            state.deleteTaskStatus.maybeWhen(
              loading: (_) {
                context.showTaskLoadingDialog();
              },
              failure: (error) async {
                context.maybePop();
                if (!context.mounted) {
                  return;
                }

                final errorMessage = error.getErrorMessage();
                if (errorMessage == null || errorMessage.isEmpty) {
                  return;
                }
                context.showErrorToast(
                  errorMessage,
                );
              },
              success: (_) async {
                context.maybePop();
                if (!context.mounted) {
                  return;
                }

                context.showSuccessToast(
                  context.strings.deleteTaskSuccessfully,
                );
              },
              orElse: () async {
                context.maybePop();
                if (!context.mounted) {
                  return;
                }
              },
            );
          },
        ),
      ],
      child: child,
    );
  }
}
