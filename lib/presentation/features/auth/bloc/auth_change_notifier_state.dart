import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/domain/entities/auth/user_entity.dart';

part 'auth_change_notifier_state.freezed.dart';

@freezed
class AuthChangeNotifierState with _$AuthChangeNotifierState {
  const factory AuthChangeNotifierState.logOutUser() = LogOutUser;
  const factory AuthChangeNotifierState.login(UserEntity user) = Login;
}
