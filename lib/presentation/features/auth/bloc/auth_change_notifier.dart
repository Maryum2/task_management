import 'package:injectable/injectable.dart';
import 'package:task_manager_app/core/task_manager_change_notifier.dart';
import 'package:task_manager_app/presentation/features/auth/bloc/auth_change_notifier_state.dart';


@lazySingleton
class AuthChangeNotifier extends TaskManagerChangeNotifier<AuthChangeNotifierState> {
  @disposeMethod
  @override
  Future<void> dispose() {
    return super.dispose();
  }
}
