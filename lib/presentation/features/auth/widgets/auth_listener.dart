import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_app/data/errors/response_error.dart';
import 'package:task_manager_app/presentation/extensions/presentation_extensions.dart';
import 'package:task_manager_app/presentation/features/auth/bloc/auth_cubit.dart';
import 'package:task_manager_app/presentation/features/auth/bloc/auth_state.dart';
import 'package:task_manager_app/presentation/routes/router.gr.dart';

class AuthListener extends StatelessWidget {
  const AuthListener({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
          listenWhen: (previous, current) {
            return previous.loginStatus != current.loginStatus;
          },
          listener: (context, state) {
            state.loginStatus.maybeWhen(
              loading: (_) {},
              failure: (error) async {
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
                if (!context.mounted) {
                  return;
                }

                await context.pushRoute(const TaskRoute());
              },
              orElse: () async {
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
