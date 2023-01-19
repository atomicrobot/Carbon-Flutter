import 'dart:io';

import 'package:carbon_flutter/app/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:carbon_flutter/app/clients/device_client.dart';
import 'package:carbon_flutter/app/clients/error_reporter.dart';
import 'package:carbon_flutter/app/clients/logger.dart';
import 'package:carbon_flutter/domain/app/build_flavor.dart';
import 'package:carbon_flutter/domain/app/build_mode.dart';
import 'package:carbon_flutter/domain/device/device_capability.dart';
import 'package:carbon_flutter/domain/device/device_info.dart';
import 'package:carbon_flutter/domain/device/device_type.dart';
import 'package:carbon_flutter/domain/device/host_platform.dart';
import 'package:carbon_flutter/domain/device/package_info.dart';
import 'package:carbon_flutter/providers.dart';
import 'package:carbon_flutter/util/time.dart';

// These instances are are things that should exist and be accessible outside
// of and before calling runApp. To accomplish that, we force them to be
// overridden (see providers.dart) in the root ProviderScope that is
// passed into runApp below. This is to support capabilities like local
// notifications, deep links, global error handling, and other things that
// happen outside of the typical Flutter app lifecycle. A good heuristic
// to use for consistency when figuring out how to expose an instance is if
// there will only ever be a single instance of the class and it does not
// need to react to state, you should expose it via overrides; otherwise
// follow the normal flow in providers.dart.

late NowEpochMs _nowEpochMs;
late BuildMode _buildMode;
late HostPlatform _hostPlatform;
late AppLogger _logger;
late AppErrorReporter _errorReporter;
late DeviceClient _deviceClient;

void launchApp(BuildFlavor buildFlavor) async {
  WidgetsFlutterBinding.ensureInitialized();

  _nowEpochMs = _buildNowEpochMs();
  _buildMode = _buildBuildMode();
  _hostPlatform = await _buildHostPlatform();
  _logger = _buildLogger();
  _errorReporter = _buildErrorReporter(_logger);
  _deviceClient = _buildDeviceClient();

  _errorReporter.init();

  _logger.i('Starting the application...');
  runApp(ProviderScope(
    overrides: [
      nowEpochMsProvider.overrideWithValue(_nowEpochMs),
      buildModeProvider.overrideWithValue(_buildMode),
      buildFlavorProvider.overrideWithValue(buildFlavor),
      hostPlatformProvider.overrideWithValue(_hostPlatform),
      loggerProvider.overrideWithValue(_logger),
      errorReporterProvider.overrideWithValue(_errorReporter),
      deviceClientProvider.overrideWithValue(_deviceClient),
    ],
    child: const App(),
  ));
}

NowEpochMs _buildNowEpochMs() => systemNowEpochMs;

BuildMode _buildBuildMode() {
  if (kDebugMode) {
    return BuildMode.debug();
  } else if (kProfileMode) {
    return BuildMode.profile();
  } else if (kReleaseMode) {
    return BuildMode.release();
  } else {
    throw UnsupportedError('Unrecognized build mode (not debug, profile, or release).');
  }
}

Future<HostPlatform> _buildHostPlatform() async {
  final deviceInfoPlugin = DeviceInfoPlugin();
  if (Platform.isAndroid) {
    final deviceAndPackageInfo = await Future.wait([
      deviceInfoPlugin.androidInfo,
      PackageInfo.fromPlatform(),
    ]);
    return HostPlatform.android(
      deviceType: DeviceType.mobile(),
      deviceCapabilities: [
        DeviceCapability.backgroundScheduling(),
        DeviceCapability.audibleAlert(),
        DeviceCapability.vibrateAlert(),
        DeviceCapability.notificationAlert(),
      ],
      deviceInfo: deviceAndPackageInfo[0] as AndroidDeviceInfo,
      packageInfo: deviceAndPackageInfo[1] as PackageInfo,
    );
  } else if (Platform.isIOS) {
    final deviceAndPackageInfo = await Future.wait([
      deviceInfoPlugin.iosInfo,
      PackageInfo.fromPlatform(),
    ]);
    return HostPlatform.iOS(
      deviceType: DeviceType.mobile(),
      deviceCapabilities: [
        DeviceCapability.backgroundScheduling(),
        DeviceCapability.audibleAlert(),
        DeviceCapability.vibrateAlert(),
        DeviceCapability.notificationAlert(),
      ],
      deviceInfo: deviceAndPackageInfo[0] as IosDeviceInfo,
      packageInfo: deviceAndPackageInfo[1] as PackageInfo,
    );
  } else {
    throw UnsupportedError('Unsupported host platform');
  }
}

AppLogger _buildLogger() => AppLogger();

AppErrorReporter _buildErrorReporter(AppLogger logger) => AppErrorReporter(logger);

DeviceClient _buildDeviceClient() => const DeviceClient();
