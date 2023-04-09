import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

export 'package:logging/logging.dart' show Logger, LogRecord, Level;

void configureApplicationLogging(LogHandler logHandler, Level logLevel) {
  hierarchicalLoggingEnabled = true;

  Logger.root.level = logLevel;
  Logger.root.onRecord.listen(logHandler.log);
}

abstract class LogHandler {
  void log(LogRecord record);
}

class DebugLogHandler extends LogHandler {
  @override
  void log(LogRecord record) {
    final Object? error = record.error;
    if (record.level >= Level.SEVERE && error != null) {
      FlutterError.dumpErrorToConsole(
        FlutterErrorDetails(
          exception: error is Exception ? error : Exception(error),
          stack: record.stackTrace,
          library: record.loggerName,
          context: ErrorDescription(record.message),
        ),
      );
    } else {
      // Send everything to the DevTools logging view
      // See: https://docs.flutter.dev/development/tools/devtools/logging
      developer.log(
        record.message,
        time: record.time,
        sequenceNumber: record.sequenceNumber,
        level: record.level.value,
        name: record.loggerName,
        zone: record.zone,
        error: record.error,
        stackTrace: record.stackTrace,
      );
    }
  }
}
