import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_app/presentation/common/global_key_provider.dart';
import 'package:task_manager_app/presentation/extensions/presentation_extensions.dart';
import 'package:task_manager_app/presentation/features/auth/widgets/auth_listener.dart';
import 'package:task_manager_app/presentation/features/auth/widgets/login_body.dart';
import 'package:task_manager_app/presentation/resources/app_strings.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final globalKey = GlobalKey<FormState>();
    return GlobalKeyProvider<FormState>(
      globalKey: globalKey,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            context.strings.login,
            style: context.textTheme.titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        body: const AuthListener(
          child: LoginBody(),
        ),
      ),
    );
  }
}
