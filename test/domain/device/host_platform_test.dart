import 'package:carbon_flutter/domain/device/device_capability.dart';
import 'package:carbon_flutter/domain/device/device_type.dart';
import 'package:carbon_flutter/domain/device/host_platform.dart';
import 'package:carbon_flutter/domain/device/package_info.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../util/device.dart';

void main() {
  group('HostPlatform', () {
    final testPackageInfo = PackageInfo(
      appName: 'testAppName',
      packageName: 'testPackageName',
      version: 'testVerion',
      buildNumber: 'testBuildNumber',
    );

    final testDeviceCapabilities = [
      DeviceCapability.backgroundScheduling(),
      DeviceCapability.audibleAlert(),
      DeviceCapability.vibrateAlert(),
      DeviceCapability.notificationAlert(),
    ];

    test('Should be able to create an Android host platform', () {
      final hostPlatform = HostPlatform.android(
        deviceType: DeviceType.mobile(),
        deviceCapabilities: testDeviceCapabilities,
        deviceInfo: testAndroidDeviceInfo,
        packageInfo: testPackageInfo,
      );

      hostPlatform.maybeMap(
        android: (android) {},
        orElse: () => fail('Not an Android host platform'),
      );
    });

    test('Should be able to create an iOS host platform', () {
      final hostPlatform = HostPlatform.iOS(
        deviceType: DeviceType.mobile(),
        deviceCapabilities: testDeviceCapabilities,
        deviceInfo: testiOSDeviceInfo,
        packageInfo: testPackageInfo,
      );

      hostPlatform.maybeMap(
        iOS: (iOS) {},
        orElse: () => fail('Not an iOS host platform'),
      );
    });

    test('Should be able to create an iOS user agent', () {
      final hostPlatform = HostPlatform.iOS(
        deviceType: DeviceType.mobile(),
        deviceCapabilities: testDeviceCapabilities,
        deviceInfo: testiOSDeviceInfo,
        packageInfo: testPackageInfo,
      );
      expect(hostPlatform.userAgent, equals('testAppName (testVerion, iOS systemVersion)'));
    });

    test('Should be able to create an android user agent', () {
      final hostPlatform = HostPlatform.android(
        deviceType: DeviceType.mobile(),
        deviceCapabilities: testDeviceCapabilities,
        deviceInfo: testAndroidDeviceInfo,
        packageInfo: testPackageInfo,
      );
      expect(hostPlatform.userAgent, equals('testAppName (testVerion, Android 16)'));
    });
  });
}
