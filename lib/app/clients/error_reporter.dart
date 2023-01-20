import 'package:carbon_flutter/app/clients/logger.dart';
import 'package:flutter/foundation.dart';

class AppErrorReporter {
  final AppLogger _logger;

  AppErrorReporter(this._logger);

  void init() {
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      _handleFlutterError(details);
    };

    PlatformDispatcher.instance.onError = (Object error, StackTrace stackTrace) {
      _handlePlatformError(error, stackTrace);
      return true;
    };
  }

  void _handleFlutterError(FlutterErrorDetails details) {}

  void _handlePlatformError(Object error, StackTrace stackTrace) {}

  void reportFatal(
    String message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) {
    _logger.e('FATAL: $message', error, stackTrace);
  }

  void reportNonFatal(
    String message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) {
    _logger.e('NON-FATAL: $message', error, stackTrace);
  }
}
