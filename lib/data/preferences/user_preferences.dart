import 'package:injectable/injectable.dart';

import 'package:shared_preferences/shared_preferences.dart';

/// This class handles the authentication state of the whole app.

@lazySingleton
class UserPreferences {
  UserPreferences(this._preferences);
  final SharedPreferences _preferences;

  static const String prefix = 'user_prefs';

  static const String _showOnboardingKey = '${prefix}_show_onboarding';

  Future<bool> setShowOnbarding({required bool shouldShow}) {
    return _preferences.setBool(_showOnboardingKey, shouldShow);
  }

  bool getShowOnbarding() {
    return _preferences.getBool(_showOnboardingKey) ?? true;
  }

  Future<void> clearAll() async {
    await _preferences.clear();
  }
}
