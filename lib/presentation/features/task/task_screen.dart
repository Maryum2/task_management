import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_app/injection/injector.dart';
import 'package:task_manager_app/presentation/extensions/presentation_extensions.dart';
import 'package:task_manager_app/presentation/features/task/bloc/task_cubit.dart';
import 'package:task_manager_app/presentation/features/task/widgets/add_new_task_button.dart';
import 'package:task_manager_app/presentation/features/task/widgets/task_body_widget.dart';
import 'package:task_manager_app/presentation/features/task/widgets/task_listener.dart';
import 'package:task_manager_app/presentation/resources/app_strings.dart';

@RoutePage()
class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskCubit>(
      create: (_) => injector()..loadTasks(),
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          automaticallyImplyLeading: false,
          title: Text(
            context.strings.tasks,
            style: context.textTheme.titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          actions: const [
            AddNewTaskButton(),
            //LogoutButton(),
          ],
        ),
        body: const TaskListener(
          child: TaskBodyWidget(),
        ),
      ),
      // floatingActionButton: const AddNewTaskFloatingButton()),
    );
  }
}
