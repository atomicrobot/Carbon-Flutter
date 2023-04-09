import 'dart:io';
import 'package:carbon_flutter/app/app.dart';
import 'package:carbon_flutter/app/application_monitor.dart';
import 'package:carbon_flutter/app/clients/device_client.dart';
import 'package:carbon_flutter/app/logger.dart';
import 'package:carbon_flutter/domain/app/build_flavor.dart';
import 'package:carbon_flutter/domain/app/build_mode.dart';
import 'package:carbon_flutter/domain/device/device_capability.dart';
import 'package:carbon_flutter/domain/device/device_info.dart';
import 'package:carbon_flutter/domain/device/device_type.dart';
import 'package:carbon_flutter/domain/device/host_platform.dart';
import 'package:carbon_flutter/domain/device/package_info.dart';
import 'package:carbon_flutter/providers.dart';
import 'package:carbon_flutter/util/time.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future launchApp(BuildFlavor buildFlavor) async {
  WidgetsFlutterBinding.ensureInitialized();

  final logHandler = kReleaseMode ? DebugLogHandler() : DebugLogHandler();
  const logLevel = kReleaseMode ? Level.INFO : Level.ALL;
  configureApplicationLogging(logHandler, logLevel);

  final applicationMonitor = kReleaseMode ? DebugApplicationMonitor() : DebugApplicationMonitor();
  configureApplicationMonitoring(applicationMonitor);

  runApp(ProviderScope(
    overrides: [
      buildFlavorProvider.overrideWithValue(buildFlavor),
      buildModeProvider.overrideWithValue(_buildMode),
      nowEpochMsProvider.overrideWithValue(systemNowEpochMs),
      hostPlatformProvider.overrideWithValue(await _hostPlatform),
      applicationMonitorProvider.overrideWithValue(applicationMonitor),
      deviceClientProvider.overrideWithValue(const DeviceClient()),
    ],
    child: const App(),
  ));
}

BuildMode get _buildMode {
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

Future<HostPlatform> get _hostPlatform async {
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
