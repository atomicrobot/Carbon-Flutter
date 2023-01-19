import 'dart:ui';

import 'package:flutter/scheduler.dart';

class DeviceClient {
  const DeviceClient();

  bool get isDarkModeEnabled => _platformBrightness == Brightness.dark;

  Brightness get _platformBrightness => SchedulerBinding.instance.platformDispatcher.platformBrightness;

  Locale get localeWithoutCountry {
    final locale = window.locale;
    return Locale(locale.languageCode);
  }
}
