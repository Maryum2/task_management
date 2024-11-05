import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager_app/presentation/common/app_button_filled_primary.dart';
import 'package:task_manager_app/presentation/common/common_text_form_field.dart';
import 'package:task_manager_app/presentation/common/global_key_provider.dart';
import 'package:task_manager_app/presentation/extensions/presentation_extensions.dart';
import 'package:task_manager_app/presentation/features/auth/bloc/auth_cubit.dart';
import 'package:task_manager_app/presentation/features/auth/bloc/auth_state.dart';
import 'package:task_manager_app/presentation/resources/app_colors.dart';
import 'package:task_manager_app/presentation/resources/app_strings.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.select<AuthCubit, AuthState>(
      (cubit) => cubit.state,
    );

    return Center(
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Form(
          key: GlobalKeyProvider.of<FormState>(context)?.globalKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Animated Username Field
                      CommonTextFormField(
                        isFloating: false,
                        controller: usernameController,
                        labelText: context.strings.username,
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.0.w),
                          child: const Icon(Icons.person),
                        ),
                        validator: (value) {
                          if ((value?.isEmpty ?? true) ||
                              (value?.length != 10)) {
                            return context.strings.usernameError;
                          }
                          return null;
                        },
                      ).animate().fadeIn(duration: 300.ms).moveY(
                            begin: 30,
                            end: 0,
                            duration: 300.ms, // Duration of the animation
                            curve: Curves.easeInOut, // Animation curve
                          ),

                      20.verticalSpace,

                      // Animated Password Field
                      CommonTextFormField(
                        isFloating: false,
                        controller: passwordController,
                        labelText: context.strings.password,
                        obscureText: true,
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.0.w),
                          child: const Icon(Icons.lock),
                        ),
                          validator: (value) {
                          if ((value?.isEmpty ?? true) ||
                              (value?.length != 10)) {
                            return context.strings.passwordError;
                          }
                          return null;
                        },
                      ).animate().fadeIn(duration: 300.ms).moveY(
                            begin: 30,
                            end: 0,
                            duration: 300.ms,
                            curve: Curves.easeInOut,
                          ),

                      40.verticalSpace,

                      // Login Button
                      AppButtonFilledPrimary(
                        child: state.loginStatus.isLoading
                            ? CircularProgressIndicator(
                                color: context.colors.white,
                              )
                            : Text(
                                context.strings.login,
                                style: context.textTheme.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: context.colors.white,
                                ),
                              ),
                        onTap: (context) async {
                          if (GlobalKeyProvider.of<FormState>(context)
                                  ?.globalKey
                                  .currentState
                                  ?.validate() ??
                              false) {
                            await context.read<AuthCubit>().login(
                                  username: usernameController.text,
                                  password: passwordController.text,
                                );
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
