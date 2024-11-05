import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class DataModule {
  @lazySingleton
  @preResolve
  Future<SharedPreferences> get prefs async =>  await SharedPreferences.getInstance();
  @lazySingleton
  FlutterSecureStorage get storage => const FlutterSecureStorage();
}
