import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';

// See: https://github.com/fluttercommunity/plus_plugins/blob/main/packages/device_info_plus/device_info_plus/test/model/android_device_info_fake.dart
AndroidDeviceInfo get testAndroidDeviceInfo {
  const fakeAndroidBuildVersion = <String, dynamic>{
    'sdkInt': 16,
    'baseOS': 'baseOS',
    'previewSdkInt': 30,
    'release': 'release',
    'codename': 'codename',
    'incremental': 'incremental',
    'securityPatch': 'securityPatch',
  };

  const fakeDisplayMetrics = <String, dynamic>{
    'widthPx': 1080.0,
    'heightPx': 2220.0,
    'xDpi': 530.0859,
    'yDpi': 529.4639,
  };

  const fakeSupportedAbis = <String>['arm64-v8a', 'x86', 'x86_64'];
  const fakeSupported32BitAbis = <String?>['x86 (IA-32)', 'MMX'];
  const fakeSupported64BitAbis = <String?>['x86-64', 'MMX', 'SSSE3'];
  const fakeSystemFeatures = ['FEATURE_AUDIO_PRO', 'FEATURE_AUDIO_OUTPUT'];

  const fakeAndroidDeviceInfo = <String, dynamic>{
    'id': 'id',
    'host': 'host',
    'tags': 'tags',
    'type': 'type',
    'model': 'model',
    'board': 'board',
    'brand': 'Google',
    'device': 'device',
    'product': 'product',
    'display': 'display',
    'hardware': 'hardware',
    'isPhysicalDevice': true,
    'bootloader': 'bootloader',
    'fingerprint': 'fingerprint',
    'manufacturer': 'manufacturer',
    'supportedAbis': fakeSupportedAbis,
    'systemFeatures': fakeSystemFeatures,
    'version': fakeAndroidBuildVersion,
    'supported64BitAbis': fakeSupported64BitAbis,
    'supported32BitAbis': fakeSupported32BitAbis,
    'displayMetrics': fakeDisplayMetrics,
    'serialNumber': 'SERIAL',
  };

  return AndroidDeviceInfo.fromMap(fakeAndroidDeviceInfo);
}

// See https://github.com/fluttercommunity/plus_plugins/blob/main/packages/device_info_plus/device_info_plus/test/model/ios_device_info_test.dart
IosDeviceInfo get testiOSDeviceInfo {
  const iosUtsnameMap = <String, dynamic>{
    'release': 'release',
    'version': 'version',
    'machine': 'machine',
    'sysname': 'sysname',
    'nodename': 'nodename',
  };
  const iosDeviceInfoMap = <String, dynamic>{
    'name': 'name',
    'model': 'model',
    'utsname': iosUtsnameMap,
    'systemName': 'systemName',
    'isPhysicalDevice': 'true',
    'systemVersion': 'systemVersion',
    'localizedModel': 'localizedModel',
    'identifierForVendor': 'identifierForVendor',
  };

  return IosDeviceInfo.fromMap(iosDeviceInfoMap);
}

// See: https://github.com/fluttercommunity/plus_plugins/blob/main/packages/device_info_plus/device_info_plus/test/model/macos_device_info_test.dart
MacOsDeviceInfo get testMacOSDeviceInfo {
  const macosDeviceInfoMap = <String, dynamic>{
    'arch': 'arch',
    'model': 'model',
    'activeCPUs': 4,
    'memorySize': 16,
    'cpuFrequency': 2,
    'hostName': 'hostName',
    'osRelease': 'osRelease',
    'computerName': 'computerName',
    'kernelVersion': 'kernelVersion',
    'systemGUID': null,
  };
  return MacOsDeviceInfo.fromMap(macosDeviceInfoMap);
}

// See: https://github.com/fluttercommunity/plus_plugins/blob/main/packages/device_info_plus/device_info_plus/test/model/windows_device_info_test.dart
WindowsDeviceInfo get testWindowsDeviceInfo {
  return WindowsDeviceInfo(
    computerName: 'computerName',
    numberOfCores: 4,
    systemMemoryInMegabytes: 16,
    userName: 'userName',
    majorVersion: 10,
    minorVersion: 0,
    buildNumber: 10240,
    platformId: 1,
    csdVersion: 'csdVersion',
    servicePackMajor: 1,
    servicePackMinor: 0,
    suitMask: 1,
    productType: 1,
    reserved: 1,
    buildLab: '22000.co_release.210604-1628',
    buildLabEx: '22000.1.amd64fre.co_release.210604-1628',
    digitalProductId: Uint8List.fromList([]),
    displayVersion: '21H2',
    editionId: 'Pro',
    installDate: DateTime(2022, 04, 02),
    productId: '00000-00000-0000-AAAAA',
    productName: 'Windows 10 Pro',
    registeredOwner: 'registeredOwner',
    releaseId: 'releaseId',
    deviceId: 'deviceId',
  );
}

// See: https://github.com/fluttercommunity/plus_plugins/blob/main/packages/device_info_plus/device_info_plus/test/model/web_browser_info_test.dart
WebBrowserInfo get testWebDeviceInfo {
  const webBrowserInfoMap = <String, dynamic>{
    'browserName': BrowserName.safari,
    'appCodeName': 'appCodeName',
    'appName': 'appName',
    'appVersion': 'appVersion',
    'deviceMemory': 42,
    'language': 'language',
    'languages': ['en', 'es'],
    'platform': 'platform',
    'product': 'product',
    'productSub': 'productSub',
    'userAgent': 'Safari',
    'vendor': 'vendor',
    'vendorSub': 'vendorSub',
    'hardwareConcurrency': 2,
    'maxTouchPoints': 42,
  };

  return WebBrowserInfo.fromMap(webBrowserInfoMap);
}
