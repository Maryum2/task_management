
import 'package:task_manager_app/data/app_config.dart';
import 'package:task_manager_app/injection/injector.dart';
import 'package:task_manager_app/presentation/routes/router.dart';

class DependencyManager {
  static Future<void> inject(AppConfig config) async {
    injector.registerLazySingleton<AppConfig>(() => config);
    injector.registerLazySingleton<AppRouter>(AppRouter.new);

    await configureDependencies();
  }
}
