import 'package:logger/logger.dart';

typedef LogFunction = void Function(
  dynamic message, [
  dynamic error,
  StackTrace? stackTrace,
]);

class AppLogger {
  final _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 4,
      printTime: true,
    ),
  );

  LogFunction get v => _logger.v;

  LogFunction get d => _logger.d;

  LogFunction get i => _logger.i;

  LogFunction get w => _logger.w;

  LogFunction get e => _logger.e;

  LogFunction get wtf => _logger.wtf;
}
