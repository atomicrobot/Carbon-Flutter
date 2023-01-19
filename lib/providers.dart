import 'package:carbon_flutter/ui/design_system/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:carbon_flutter/app/clients/device_client.dart';
import 'package:carbon_flutter/app/clients/error_reporter.dart';
import 'package:carbon_flutter/app/clients/logger.dart';
import 'package:carbon_flutter/domain/app/app_configuration.dart';
import 'package:carbon_flutter/domain/app/build_flavor.dart';
import 'package:carbon_flutter/domain/app/build_mode.dart';
import 'package:carbon_flutter/domain/device/host_platform.dart';
import 'package:carbon_flutter/util/time.dart';

// The instances that these providers would normally return are are things
// that should exist and be accessible outside of and before calling runApp.
// To accomplish that, we force them to be overridden in the root ProviderScope
// that is passed into runApp (checkout main.dart).

final nowEpochMsProvider = Provider<NowEpochMs>((ref) {
  throw UnsupportedError('NowEpochMs should be provided via an override in the root ProviderScope');
});

final hostPlatformProvider = Provider<HostPlatform>((ref) {
  throw UnsupportedError('HostPlatform should be provided via an override in the root ProviderScope');
});

final buildModeProvider = Provider<BuildMode>((ref) {
  throw UnsupportedError('BuildMode should be provided via an override in the root ProviderScope');
});

final buildFlavorProvider = Provider<BuildFlavor>((ref) {
  throw UnsupportedError('BuildFlavor should be provided via an override in the root ProviderScope');
});

final loggerProvider = Provider<AppLogger>((ref) {
  throw UnsupportedError('AppLogger should be provided via an override in the root ProviderScope');
});

final errorReporterProvider = Provider<AppErrorReporter>((ref) {
  throw UnsupportedError('AppErrorReporter should be provided via an override in the root ProviderScope');
});

final deviceClientProvider = Provider<DeviceClient>((ref) {
  throw UnsupportedError('DeviceClient should be provided via an override in the root ProviderScope');
});

// These providers follow a normal lifecycle

final appConfigurationProvider = StateNotifierProvider<AppConfigurationStateNotifier, AppConfiguration>((ref) {
  final deviceClient = ref.watch(deviceClientProvider);
  return AppConfigurationStateNotifier(AppConfiguration(
    darkMode: deviceClient.isDarkModeEnabled,
    supportedLocales: const [
      Locale('en', ''),
      Locale('es', ''),
    ],
    locale: deviceClient.localeWithoutCountry,
  ));
});

final themeProvider = Provider<ThemeData>((ref) {
  final appConfigurationState = ref.watch(appConfigurationProvider);
  final darkMode = appConfigurationState.darkMode;
  return darkMode ? darkTheme : lightTheme;
});
