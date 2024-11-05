import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager_app/presentation/common/app_button_filled_primary.dart';
import 'package:task_manager_app/presentation/common/common_text_form_field.dart';
import 'package:task_manager_app/presentation/common/global_key_provider.dart';
import 'package:task_manager_app/presentation/extensions/presentation_extensions.dart';
import 'package:task_manager_app/presentation/features/task/bloc/task_cubit.dart';
import 'package:task_manager_app/presentation/resources/app_colors.dart';
import 'package:task_manager_app/presentation/resources/app_strings.dart';

class AddNewTaskBottomSheet extends StatefulWidget {
  const AddNewTaskBottomSheet({super.key});

  @override
  State<AddNewTaskBottomSheet> createState() => _AddNewTaskBottomSheetState();
}

class _AddNewTaskBottomSheetState extends State<AddNewTaskBottomSheet> {
  final TextEditingController newTaskController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    newTaskController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final checkBoxValue = context.select<TaskCubit, bool>(
      (cubit) => cubit.state.isCompleted,
    );

    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: context.keyboardHeight,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.strings.addNewTask,
              style: context.textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            16.verticalSpace,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: CommonTextFormField(
                    isFloating: false,
                    controller: newTaskController,
                    labelText: context.strings.task,
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.0.w),
                      child: const Icon(Icons.task_outlined),
                    ),
                  ).animate().fadeIn(duration: 300.ms).moveY(
                        begin: 30,
                        end: 0,
                        duration: 300.ms,
                        curve: Curves.easeInOut,
                      ),
                ),
                Checkbox(
                  activeColor: context.colors.secondary,
                  value: checkBoxValue,
                  onChanged: (bool? value) {
                    context
                        .read<TaskCubit>()
                        .updateTaskCompletion(value: !checkBoxValue);
                  },
                ),
              ],
            ),
            16.verticalSpace,
            AppButtonFilledPrimary(
              child: Text(
                context.strings.add,
                style: context.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colors.white,
                ),
              ),
              onTap: (context) async {
                if (newTaskController.text.isNotEmpty) {
                  context.read<TaskCubit>().addTask(
                        newTaskController.text,
                        checkBoxValue,
                      );
                  context.maybePop();
                }
              },
            ).animate().fadeIn(duration: 300.ms).moveY(
                  begin: 30,
                  end: 0,
                  duration: 300.ms,
                  curve: Curves.easeInOut,
                ),
          ],
        ),
      ),
    );
  }
}
