// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../data/api/api_config.dart' as _i563;
import '../data/api/interceptors/http_auth_interceptor.dart' as _i249;
import '../data/app_config.dart' as _i717;
import '../data/data_sources/auth/auth_http_data_source.dart' as _i991;
import '../data/data_sources/task/task_http_data_source.dart' as _i560;
import '../data/preferences/task_preferences.dart' as _i294;
import '../data/preferences/user_preferences.dart' as _i868;
import '../data/preferences/user_secure_storage.dart' as _i849;
import '../data/remappers/auth/user_login_remapper.dart' as _i997;
import '../data/remappers/auth/user_remapper.dart' as _i894;
import '../data/remappers/task/add_task_remapper.dart' as _i871;
import '../data/remappers/task/delete_task_remapper.dart' as _i252;
import '../data/remappers/task/get_all_tasks_remapper.dart' as _i31;
import '../data/remappers/task/task_remapper.dart' as _i137;
import '../data/remappers/task/update_task_remapper.dart' as _i118;
import '../data/services/auth/auth_service_impl.dart' as _i359;
import '../data/services/task/task_service_impl.dart' as _i33;
import '../domain/preferences/task_storage.dart' as _i890;
import '../domain/preferences/user_storage.dart' as _i1000;
import '../domain/services/auth/auth_service.dart' as _i711;
import '../domain/services/task/task_service.dart' as _i820;
import '../domain/use_cases/auth/auth_preferences/clear_all_user_storage_use_case.dart'
    as _i635;
import '../domain/use_cases/auth/auth_preferences/get_user_access_token_use_case.dart'
    as _i984;
import '../domain/use_cases/auth/auth_preferences/get_user_from_storage_use_case.dart'
    as _i522;
import '../domain/use_cases/auth/auth_preferences/get_user_login_status_use_case.dart'
    as _i511;
import '../domain/use_cases/auth/auth_preferences/save_user_access_token_to_storage_use_case.dart'
    as _i193;
import '../domain/use_cases/auth/auth_preferences/save_user_to_storage_use_case.dart'
    as _i860;
import '../domain/use_cases/auth/user_login_use_case.dart' as _i892;
import '../domain/use_cases/task/add_task_use_case.dart' as _i1069;
import '../domain/use_cases/task/delete_task_use_case.dart' as _i417;
import '../domain/use_cases/task/get_all_tasks_use_case.dart' as _i476;
import '../domain/use_cases/task/task_preferences/delete_task_from_storage_use_case.dart'
    as _i813;
import '../domain/use_cases/task/task_preferences/get_task_from_storage_use_case.dart'
    as _i463;
import '../domain/use_cases/task/task_preferences/save_all_tasks_to_storage_use_case.dart'
    as _i386;
import '../domain/use_cases/task/task_preferences/save_task_to_storage_use_case.dart'
    as _i547;
import '../domain/use_cases/task/task_preferences/update_task_in_storage_use_case.dart'
    as _i616;
import '../domain/use_cases/task/update_task_use_case.dart' as _i934;
import '../presentation/features/auth/bloc/auth_change_notifier.dart' as _i804;
import '../presentation/features/auth/bloc/auth_cubit.dart' as _i570;
import '../presentation/features/auth/bloc/auth_state.dart' as _i148;
import '../presentation/features/task/bloc/task_cubit.dart' as _i56;
import '../presentation/features/task/bloc/task_state.dart' as _i896;
import 'data_module.dart' as _i444;
import 'http_module.dart' as _i273;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dataModule = _$DataModule();
  final httpModule = _$HttpModule();
  gh.factory<_i997.UserLoginRemapper>(() => _i997.UserLoginRemapper());
  gh.factory<_i894.UserRemapper>(() => _i894.UserRemapper());
  gh.factory<_i871.AddTaskRemapper>(() => _i871.AddTaskRemapper());
  gh.factory<_i118.UpdateTaskRemapper>(() => _i118.UpdateTaskRemapper());
  gh.factory<_i31.GetAllTasksRemapper>(() => _i31.GetAllTasksRemapper());
  gh.factory<_i252.DeleteTaskRemapper>(() => _i252.DeleteTaskRemapper());
  gh.factory<_i137.TaskRemapper>(() => _i137.TaskRemapper());
  await gh.lazySingletonAsync<_i460.SharedPreferences>(
    () => dataModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i558.FlutterSecureStorage>(() => dataModule.storage);
  gh.lazySingleton<_i804.AuthChangeNotifier>(
    () => _i804.AuthChangeNotifier(),
    dispose: (i) => i.dispose(),
  );
  gh.lazySingleton<_i1000.UserStorage>(() => _i849.UserSecureStorage(
        gh<_i558.FlutterSecureStorage>(),
        gh<_i894.UserRemapper>(),
      ));
  gh.factory<_i249.HttpAuthInterceptor>(
      () => _i249.HttpAuthInterceptor(gh<_i1000.UserStorage>()));
  gh.factory<_i511.GetUserLoginStatusUseCase>(
      () => _i511.GetUserLoginStatusUseCase(gh<_i1000.UserStorage>()));
  gh.factory<_i522.GetUserFromStorageUseCase>(
      () => _i522.GetUserFromStorageUseCase(gh<_i1000.UserStorage>()));
  gh.factory<_i635.ClearUserStorageUseCase>(
      () => _i635.ClearUserStorageUseCase(gh<_i1000.UserStorage>()));
  gh.factory<_i193.SaveUserAccessTokenToStorageUseCase>(() =>
      _i193.SaveUserAccessTokenToStorageUseCase(gh<_i1000.UserStorage>()));
  gh.factory<_i984.GetUserAccessTokenUseCase>(
      () => _i984.GetUserAccessTokenUseCase(gh<_i1000.UserStorage>()));
  gh.factory<_i860.SaveUserToStorageUseCase>(
      () => _i860.SaveUserToStorageUseCase(gh<_i1000.UserStorage>()));
  gh.lazySingleton<_i890.TaskStorage>(() => _i294.TaskPreferences(
        gh<_i460.SharedPreferences>(),
        gh<_i137.TaskRemapper>(),
      ));
  gh.factory<_i563.ApiConfig>(() => _i563.ApiConfig(gh<_i717.AppConfig>()));
  gh.singleton<_i361.Dio>(
    () => httpModule.getAuthenticatedDio(
      gh<_i563.ApiConfig>(),
      gh<_i717.AppConfig>(),
      gh<_i249.HttpAuthInterceptor>(),
    ),
    instanceName: 'AUTHENTICATED_DIO',
  );
  gh.factory<_i547.SaveTaskToStorageUseCase>(
      () => _i547.SaveTaskToStorageUseCase(gh<_i890.TaskStorage>()));
  gh.factory<_i463.GetTaskFromStorageUseCase>(
      () => _i463.GetTaskFromStorageUseCase(gh<_i890.TaskStorage>()));
  gh.factory<_i813.DeleteTaskFromStorageUseCase>(
      () => _i813.DeleteTaskFromStorageUseCase(gh<_i890.TaskStorage>()));
  gh.factory<_i616.UpdateTaskInStorageUseCase>(
      () => _i616.UpdateTaskInStorageUseCase(gh<_i890.TaskStorage>()));
  gh.factory<_i386.SaveAllTasksToStorageUseCase>(
      () => _i386.SaveAllTasksToStorageUseCase(gh<_i890.TaskStorage>()));
  gh.factory<_i991.AuthHttpDataSource>(() => _i991.AuthHttpDataSource(
      gh<_i361.Dio>(instanceName: 'AUTHENTICATED_DIO')));
  gh.factory<_i560.TaskHttpDataSource>(() => _i560.TaskHttpDataSource(
      gh<_i361.Dio>(instanceName: 'AUTHENTICATED_DIO')));
  gh.lazySingleton<_i868.UserPreferences>(
      () => _i868.UserPreferences(gh<_i460.SharedPreferences>()));
  gh.factory<_i820.TaskService>(() => _i33.TaskServiceImpl(
        gh<_i560.TaskHttpDataSource>(),
        gh<_i31.GetAllTasksRemapper>(),
        gh<_i871.AddTaskRemapper>(),
        gh<_i118.UpdateTaskRemapper>(),
        gh<_i252.DeleteTaskRemapper>(),
        gh<_i1000.UserStorage>(),
      ));
  gh.singleton<_i361.Dio>(
    () => httpModule.getForAuthenticationDio(
      gh<_i563.ApiConfig>(),
      gh<_i717.AppConfig>(),
    ),
    instanceName: 'FOR_AUTHENTICATION',
  );
  gh.factory<_i711.AuthService>(() => _i359.AuthServiceImpl(
        gh<_i991.AuthHttpDataSource>(),
        gh<_i997.UserLoginRemapper>(),
      ));
  gh.factory<_i892.UserLoginUseCase>(
      () => _i892.UserLoginUseCase(gh<_i711.AuthService>()));
  gh.factory<_i1069.AddTaskUseCase>(
      () => _i1069.AddTaskUseCase(gh<_i820.TaskService>()));
  gh.factory<_i934.UpdateTaskUseCase>(
      () => _i934.UpdateTaskUseCase(gh<_i820.TaskService>()));
  gh.factory<_i417.DeleteTaskUseCase>(
      () => _i417.DeleteTaskUseCase(gh<_i820.TaskService>()));
  gh.factory<_i476.GetAllTasksUseCase>(
      () => _i476.GetAllTasksUseCase(gh<_i820.TaskService>()));
  gh.factoryParam<_i56.TaskCubit, _i896.TaskState?, dynamic>((
    taskState,
    _,
  ) =>
      _i56.TaskCubit(
        taskState,
        gh<_i476.GetAllTasksUseCase>(),
        gh<_i1069.AddTaskUseCase>(),
        gh<_i934.UpdateTaskUseCase>(),
        gh<_i417.DeleteTaskUseCase>(),
        gh<_i547.SaveTaskToStorageUseCase>(),
        gh<_i463.GetTaskFromStorageUseCase>(),
        gh<_i813.DeleteTaskFromStorageUseCase>(),
        gh<_i616.UpdateTaskInStorageUseCase>(),
        gh<_i386.SaveAllTasksToStorageUseCase>(),
      ));
  gh.factoryParam<_i570.AuthCubit, _i148.AuthState?, dynamic>((
    authState,
    _,
  ) =>
      _i570.AuthCubit(
        authState,
        gh<_i804.AuthChangeNotifier>(),
        gh<_i892.UserLoginUseCase>(),
        gh<_i860.SaveUserToStorageUseCase>(),
        gh<_i193.SaveUserAccessTokenToStorageUseCase>(),
        gh<_i511.GetUserLoginStatusUseCase>(),
        gh<_i522.GetUserFromStorageUseCase>(),
        gh<_i984.GetUserAccessTokenUseCase>(),
      ));
  return getIt;
}

class _$DataModule extends _i444.DataModule {}

class _$HttpModule extends _i273.HttpModule {}
