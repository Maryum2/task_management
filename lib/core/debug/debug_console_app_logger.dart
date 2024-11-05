import 'package:logger/logger.dart';

mixin DebugConsoleAppLogger {
  final Logger _logger = Logger();

  String get context;

  void t(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.t(
      '[$context] $message', // Add context to the log message
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  void d(
    message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.d(
      '[$context] $message', // Add context to the log message
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  void i(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.i(
      '[$context] $message', // Add context to the log message
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  void w(
    message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.w(
      '[$context] $message', // Add context to the log message
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  void e(
    message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.e(
      '[$context] $message', // Add context to the log message
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  void f(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.f(
      '[$context] $message', // Add context to the log message
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
