import 'package:flutter/material.dart';

class AppStrings {
  // Singleton instance
  static final AppStrings _instance = AppStrings._internal();

  // Private constructor
  AppStrings._internal();

  // Factory method to access the singleton instance
  factory AppStrings() {
    return _instance;
  }

  String get appName => 'Task Manager';
  String get login => 'Login';
  String get logout => 'Logout';
  String get password => 'Password';
  String get username => 'Username';
  String get hintUsername => 'Please enter username';
  String get hintPassword => 'Please enter password';
  String get welcomeMessage => 'Welcome to Task Manager!';
  String get errorMessage => 'An error occurred, please try again.';
  String get tasks => 'Tasks';
  String get addNewTask => 'Add New Task';
  String get add => 'Add';
  String get editTask => 'Edit Task';
  String get noTasksYet => 'No Tasks yet!';
  String get updateTaskSuccessfully => 'Task Updated Successfully';
  String get deleteTaskSuccessfully => 'Task Deleted Successfully';
  String get task => 'Task';
  String get usernameError => 'Please enter username';
  String get passwordError => 'Please enter password';
  String get loadMore => 'Load More!';
}

extension AppStringsExtension on BuildContext {
  AppStrings get strings => AppStrings();
}
