import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_configuration.freezed.dart';

class AppConfigurationStateNotifier extends StateNotifier<AppConfiguration> {
  AppConfigurationStateNotifier(super.state);

  void setDarkMode(bool darkMode) {
    state = state.copyWith(
      darkMode: darkMode,
    );
  }

  void setLocale(Locale locale) {
    state = state.copyWith(
      locale: locale,
    );
  }
}

@freezed
class AppConfiguration with _$AppConfiguration {
  const factory AppConfiguration({
    required bool darkMode,
    required List<Locale> supportedLocales,
    required Locale locale,
  }) = _AppConfiguration;

  const AppConfiguration._();
}
