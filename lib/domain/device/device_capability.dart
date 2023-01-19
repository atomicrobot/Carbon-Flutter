import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_capability.freezed.dart';

@freezed
class DeviceCapability with _$DeviceCapability {
  factory DeviceCapability.backgroundScheduling() = BackgroundSchedulingCapability;
  factory DeviceCapability.audibleAlert() = AudibleAlertCapability;
  factory DeviceCapability.vibrateAlert() = VibrateAlertCapability;
  factory DeviceCapability.notificationAlert() = NotificationAlertCapability;

  const DeviceCapability._();
}
