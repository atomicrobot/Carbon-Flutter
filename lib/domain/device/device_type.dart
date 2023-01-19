import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_type.freezed.dart';

@freezed
class DeviceType with _$DeviceType {
  factory DeviceType.mobile() = MobileDeviceType;

  const DeviceType._();
}
