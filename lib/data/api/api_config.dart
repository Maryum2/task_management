import 'package:injectable/injectable.dart';
import 'package:task_manager_app/data/app_config.dart';

@injectable
class ApiConfig {
  final AppConfig _appConfig;
  ApiConfig(this._appConfig);
  String get apiUrl => _appConfig.apiBaseUrl;
  static const login = '/auth/login';
  static const getAllTasks = '/todos';
  static const addTask = '/todos/add';
  static const editTask = '/todos/{id}';
  static const deleteTask = '/todos/{id}';
}
