import 'dart:isolate';

import 'package:carbon_flutter/app/logger.dart';
import 'package:flutter/foundation.dart';

// See https://docs.flutter.dev/testing/errors
void configureApplicationMonitoring(ApplicationMonitor applicationMonitor) {
  // Uncaught Flutter errors
  FlutterError.onError = (errorDetails) {
    applicationMonitor.handleFlutterFatalError(errorDetails);
  };

  // Asynchronous errors
  PlatformDispatcher.instance.onError = (error, stack) {
    applicationMonitor.handleException(error, stack);
    return true;
  };

  // Errors outside of Flutter
  Isolate.current.addErrorListener(RawReceivePort((pair) async {
    final List<dynamic> errorAndStacktrace = pair;
    await applicationMonitor.handleException(
      errorAndStacktrace.first,
      errorAndStacktrace.last,
    );
  }).sendPort);
}

abstract class ApplicationMonitor {
  Future<void> handleFlutterFatalError(FlutterErrorDetails error);
  Future<void> handleException(dynamic error, StackTrace? stackTrace);

  Future<void> log(String message);
  Future<void> setUserIdentifier(String identifier);
  Future<void> setCustomKey(String key, Object value);

  Future<void> setEnabled(bool enabled);
  Future<void> testCrash();
}

class DebugApplicationMonitor extends ApplicationMonitor {
  final _log = Logger('DebugApplicationMonitor');

  @override
  Future<void> handleFlutterFatalError(FlutterErrorDetails error) async {
    FlutterError.dumpErrorToConsole(error);
  }

  @override
  Future<void> handleException(dynamic error, StackTrace? stackTrace) async {
    _log.severe('Exception', error, stackTrace);
  }

  @override
  Future<void> log(String message) async {
    _log.info(message);
  }

  @override
  Future<void> setUserIdentifier(String identifier) async {
    _log.info('Set User Identifier: $identifier');
  }

  @override
  Future<void> setCustomKey(String key, Object value) async {
    _log.info('Set Custom Key: $key = $value');
  }

  @override
  Future<void> setEnabled(bool enabled) async {
    _log.info('Set Enabled: $enabled');
  }

  @override
  Future<void> testCrash() async {
    _log.warning('Test Crash!');
  }
}
