import 'dart:ui';
import 'package:carbon_flutter/domain/app/app_configuration.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppConfigurationStateNotifier', () {
    test('Should be able to set dark mode', () {
      final stateNotifier = AppConfigurationStateNotifier(const AppConfiguration(
        darkMode: false,
        supportedLocales: [Locale('en'), Locale('es')],
        locale: Locale('en'),
      ));

      expect(stateNotifier.debugState.darkMode, isFalse);

      stateNotifier.setDarkMode(true);

      expect(stateNotifier.debugState.darkMode, isTrue);
    });

    test('Should be able to set the locale', () {
      final stateNotifier = AppConfigurationStateNotifier(const AppConfiguration(
        darkMode: false,
        supportedLocales: [Locale('en'), Locale('es')],
        locale: Locale('en'),
      ));

      expect(stateNotifier.debugState.locale, equals(const Locale('en')));
      stateNotifier.setLocale(const Locale('es'));
      expect(stateNotifier.debugState.locale, equals(const Locale('es')));
    });
  });
}
