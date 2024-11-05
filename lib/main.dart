import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager_app/data/app_config.dart';
import 'package:task_manager_app/injection/dependencies.dart';
import 'package:task_manager_app/injection/injector.dart';
import 'package:task_manager_app/presentation/extensions/presentation_extensions.dart';
import 'package:task_manager_app/presentation/features/auth/bloc/auth_cubit.dart';
import 'package:task_manager_app/presentation/routes/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final config = DevelopmentAppConfig();
  await DependencyManager.inject(config);
  runApp(const MyApp());
}

class DevelopmentAppConfig implements AppConfig {
  @override
  String get apiBaseUrl => 'https://dummyjson.com/';
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appRouter = injector.get<AppRouter>();

    return MultiBlocProvider(
        providers: [
          BlocProvider<AuthCubit>(
          create: (context) => injector(),
        ),
        ],
        child: ScreenUtilInit(
          designSize: const Size(380, 844),
          ensureScreenSize: false,
          minTextAdapt: true,
          useInheritedMediaQuery: true,
          builder: (context, child) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              builder: (context, widget) {
                if (widget == null) {
                  return const SizedBox();
                }
                return Theme(
                  data: Theme.of(context).copyWith(
                    textTheme: context.textTheme.apply(),
                  ),
                  child: widget,
                );
              },
              routerDelegate: AutoRouterDelegate(
                appRouter,
              ),
              routeInformationParser: appRouter.defaultRouteParser(),
            );
          },
        ));
  }
}
