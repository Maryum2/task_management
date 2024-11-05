import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager_app/presentation/features/task/bloc/task_cubit.dart';
import 'package:task_manager_app/presentation/features/task/widgets/add_new_task_bottom_sheet.dart';
import 'package:task_manager_app/presentation/resources/app_colors.dart';

class AddNewTaskButton extends StatelessWidget {
  const AddNewTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (_) {
              final taskCubit = BlocProvider.of<TaskCubit>(context);
              return BlocProvider.value(
                value: taskCubit,
                child: const AddNewTaskBottomSheet(),
              );
            });
      },
      child: Container(
        height: 30.h,
        width: 30.h,
        margin: EdgeInsets.only(right: 20.0.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0.r),
          color: context.colors.secondary,
        ),
        child: Icon(
          Icons.add,
          color: context.colors.white,
        ),
      ),
    );
  }
}
