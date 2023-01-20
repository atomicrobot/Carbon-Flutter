import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:carbon_flutter/domain/device/device_capability.dart';
import 'package:carbon_flutter/domain/device/device_info.dart';
import 'package:carbon_flutter/domain/device/device_type.dart';
import 'package:carbon_flutter/domain/device/package_info.dart';

part 'host_platform.freezed.dart';

@freezed
class HostPlatform with _$HostPlatform {
  factory HostPlatform.android({
    // Phones and tablets would be mobile, Chromebook and possibly Windows 11 would be desktop
    required DeviceType deviceType,
    required List<DeviceCapability> deviceCapabilities,
    required AndroidDeviceInfo deviceInfo,
    required PackageInfo packageInfo,
  }) = AndroidHostPlatform;
  factory HostPlatform.iOS({
    required DeviceType deviceType,
    required List<DeviceCapability> deviceCapabilities,
    required IosDeviceInfo deviceInfo,
    required PackageInfo packageInfo,
  }) = iOSHostPlatform;

  const HostPlatform._();

  String get userAgent {
    final appName = packageInfo.appName;
    final appVersion = packageInfo.version;
    final platformVersion = map(
      android: (android) => 'Android ${android.deviceInfo.version.sdkInt}',
      iOS: (iOS) => 'iOS ${iOS.deviceInfo.systemVersion}',
    );
    return '$appName ($appVersion, $platformVersion)';
  }
}
