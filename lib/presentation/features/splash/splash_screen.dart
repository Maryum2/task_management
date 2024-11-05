import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager_app/presentation/features/auth/bloc/auth_cubit.dart';
import 'package:task_manager_app/presentation/features/auth/bloc/auth_state.dart';
import 'package:task_manager_app/presentation/resources/app_colors.dart';
import 'package:task_manager_app/presentation/routes/router.gr.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AuthCubit>().initReturningUserState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          Future.delayed(const Duration(seconds: 2), () {
            if (context.mounted) {
              if (state.previouslyLoggedIn) {
                context.replaceRoute(const TaskRoute());
              } else {
                context.replaceRoute(const LoginRoute());
              }
            }
          });
        },
        child: Center(
          child: Icon(
            Icons.task_rounded,
            size: 200.sp,
          ),
        ),
      ),
    );
  }
}
