// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'host_platform.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HostPlatform {
// Phones and tablets would be mobile, Chromebook and possibly Windows 11 would be desktop
  DeviceType get deviceType => throw _privateConstructorUsedError;
  List<DeviceCapability> get deviceCapabilities =>
      throw _privateConstructorUsedError;
  BaseDeviceInfo get deviceInfo => throw _privateConstructorUsedError;
  PackageInfo get packageInfo => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            AndroidDeviceInfo deviceInfo,
            PackageInfo packageInfo)
        android,
    required TResult Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            IosDeviceInfo deviceInfo,
            PackageInfo packageInfo)
        iOS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            AndroidDeviceInfo deviceInfo,
            PackageInfo packageInfo)?
        android,
    TResult? Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            IosDeviceInfo deviceInfo,
            PackageInfo packageInfo)?
        iOS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            AndroidDeviceInfo deviceInfo,
            PackageInfo packageInfo)?
        android,
    TResult Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            IosDeviceInfo deviceInfo,
            PackageInfo packageInfo)?
        iOS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidHostPlatform value) android,
    required TResult Function(iOSHostPlatform value) iOS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidHostPlatform value)? android,
    TResult? Function(iOSHostPlatform value)? iOS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidHostPlatform value)? android,
    TResult Function(iOSHostPlatform value)? iOS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HostPlatformCopyWith<HostPlatform> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostPlatformCopyWith<$Res> {
  factory $HostPlatformCopyWith(
          HostPlatform value, $Res Function(HostPlatform) then) =
      _$HostPlatformCopyWithImpl<$Res, HostPlatform>;
  @useResult
  $Res call(
      {DeviceType deviceType,
      List<DeviceCapability> deviceCapabilities,
      PackageInfo packageInfo});

  $DeviceTypeCopyWith<$Res> get deviceType;
}

/// @nodoc
class _$HostPlatformCopyWithImpl<$Res, $Val extends HostPlatform>
    implements $HostPlatformCopyWith<$Res> {
  _$HostPlatformCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceType = null,
    Object? deviceCapabilities = null,
    Object? packageInfo = null,
  }) {
    return _then(_value.copyWith(
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as DeviceType,
      deviceCapabilities: null == deviceCapabilities
          ? _value.deviceCapabilities
          : deviceCapabilities // ignore: cast_nullable_to_non_nullable
              as List<DeviceCapability>,
      packageInfo: null == packageInfo
          ? _value.packageInfo
          : packageInfo // ignore: cast_nullable_to_non_nullable
              as PackageInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeviceTypeCopyWith<$Res> get deviceType {
    return $DeviceTypeCopyWith<$Res>(_value.deviceType, (value) {
      return _then(_value.copyWith(deviceType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AndroidHostPlatformCopyWith<$Res>
    implements $HostPlatformCopyWith<$Res> {
  factory _$$AndroidHostPlatformCopyWith(_$AndroidHostPlatform value,
          $Res Function(_$AndroidHostPlatform) then) =
      __$$AndroidHostPlatformCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DeviceType deviceType,
      List<DeviceCapability> deviceCapabilities,
      AndroidDeviceInfo deviceInfo,
      PackageInfo packageInfo});

  @override
  $DeviceTypeCopyWith<$Res> get deviceType;
}

/// @nodoc
class __$$AndroidHostPlatformCopyWithImpl<$Res>
    extends _$HostPlatformCopyWithImpl<$Res, _$AndroidHostPlatform>
    implements _$$AndroidHostPlatformCopyWith<$Res> {
  __$$AndroidHostPlatformCopyWithImpl(
      _$AndroidHostPlatform _value, $Res Function(_$AndroidHostPlatform) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceType = null,
    Object? deviceCapabilities = null,
    Object? deviceInfo = null,
    Object? packageInfo = null,
  }) {
    return _then(_$AndroidHostPlatform(
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as DeviceType,
      deviceCapabilities: null == deviceCapabilities
          ? _value._deviceCapabilities
          : deviceCapabilities // ignore: cast_nullable_to_non_nullable
              as List<DeviceCapability>,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as AndroidDeviceInfo,
      packageInfo: null == packageInfo
          ? _value.packageInfo
          : packageInfo // ignore: cast_nullable_to_non_nullable
              as PackageInfo,
    ));
  }
}

/// @nodoc

class _$AndroidHostPlatform extends AndroidHostPlatform
    with DiagnosticableTreeMixin {
  _$AndroidHostPlatform(
      {required this.deviceType,
      required final List<DeviceCapability> deviceCapabilities,
      required this.deviceInfo,
      required this.packageInfo})
      : _deviceCapabilities = deviceCapabilities,
        super._();

// Phones and tablets would be mobile, Chromebook and possibly Windows 11 would be desktop
  @override
  final DeviceType deviceType;
  final List<DeviceCapability> _deviceCapabilities;
  @override
  List<DeviceCapability> get deviceCapabilities {
    if (_deviceCapabilities is EqualUnmodifiableListView)
      return _deviceCapabilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deviceCapabilities);
  }

  @override
  final AndroidDeviceInfo deviceInfo;
  @override
  final PackageInfo packageInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HostPlatform.android(deviceType: $deviceType, deviceCapabilities: $deviceCapabilities, deviceInfo: $deviceInfo, packageInfo: $packageInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HostPlatform.android'))
      ..add(DiagnosticsProperty('deviceType', deviceType))
      ..add(DiagnosticsProperty('deviceCapabilities', deviceCapabilities))
      ..add(DiagnosticsProperty('deviceInfo', deviceInfo))
      ..add(DiagnosticsProperty('packageInfo', packageInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AndroidHostPlatform &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            const DeepCollectionEquality()
                .equals(other._deviceCapabilities, _deviceCapabilities) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.packageInfo, packageInfo) ||
                other.packageInfo == packageInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      deviceType,
      const DeepCollectionEquality().hash(_deviceCapabilities),
      deviceInfo,
      packageInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AndroidHostPlatformCopyWith<_$AndroidHostPlatform> get copyWith =>
      __$$AndroidHostPlatformCopyWithImpl<_$AndroidHostPlatform>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            AndroidDeviceInfo deviceInfo,
            PackageInfo packageInfo)
        android,
    required TResult Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            IosDeviceInfo deviceInfo,
            PackageInfo packageInfo)
        iOS,
  }) {
    return android(deviceType, deviceCapabilities, deviceInfo, packageInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            AndroidDeviceInfo deviceInfo,
            PackageInfo packageInfo)?
        android,
    TResult? Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            IosDeviceInfo deviceInfo,
            PackageInfo packageInfo)?
        iOS,
  }) {
    return android?.call(
        deviceType, deviceCapabilities, deviceInfo, packageInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            AndroidDeviceInfo deviceInfo,
            PackageInfo packageInfo)?
        android,
    TResult Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            IosDeviceInfo deviceInfo,
            PackageInfo packageInfo)?
        iOS,
    required TResult orElse(),
  }) {
    if (android != null) {
      return android(deviceType, deviceCapabilities, deviceInfo, packageInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidHostPlatform value) android,
    required TResult Function(iOSHostPlatform value) iOS,
  }) {
    return android(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidHostPlatform value)? android,
    TResult? Function(iOSHostPlatform value)? iOS,
  }) {
    return android?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidHostPlatform value)? android,
    TResult Function(iOSHostPlatform value)? iOS,
    required TResult orElse(),
  }) {
    if (android != null) {
      return android(this);
    }
    return orElse();
  }
}

abstract class AndroidHostPlatform extends HostPlatform {
  factory AndroidHostPlatform(
      {required final DeviceType deviceType,
      required final List<DeviceCapability> deviceCapabilities,
      required final AndroidDeviceInfo deviceInfo,
      required final PackageInfo packageInfo}) = _$AndroidHostPlatform;
  AndroidHostPlatform._() : super._();

  @override // Phones and tablets would be mobile, Chromebook and possibly Windows 11 would be desktop
  DeviceType get deviceType;
  @override
  List<DeviceCapability> get deviceCapabilities;
  @override
  AndroidDeviceInfo get deviceInfo;
  @override
  PackageInfo get packageInfo;
  @override
  @JsonKey(ignore: true)
  _$$AndroidHostPlatformCopyWith<_$AndroidHostPlatform> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$iOSHostPlatformCopyWith<$Res>
    implements $HostPlatformCopyWith<$Res> {
  factory _$$iOSHostPlatformCopyWith(
          _$iOSHostPlatform value, $Res Function(_$iOSHostPlatform) then) =
      __$$iOSHostPlatformCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DeviceType deviceType,
      List<DeviceCapability> deviceCapabilities,
      IosDeviceInfo deviceInfo,
      PackageInfo packageInfo});

  @override
  $DeviceTypeCopyWith<$Res> get deviceType;
}

/// @nodoc
class __$$iOSHostPlatformCopyWithImpl<$Res>
    extends _$HostPlatformCopyWithImpl<$Res, _$iOSHostPlatform>
    implements _$$iOSHostPlatformCopyWith<$Res> {
  __$$iOSHostPlatformCopyWithImpl(
      _$iOSHostPlatform _value, $Res Function(_$iOSHostPlatform) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceType = null,
    Object? deviceCapabilities = null,
    Object? deviceInfo = null,
    Object? packageInfo = null,
  }) {
    return _then(_$iOSHostPlatform(
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as DeviceType,
      deviceCapabilities: null == deviceCapabilities
          ? _value._deviceCapabilities
          : deviceCapabilities // ignore: cast_nullable_to_non_nullable
              as List<DeviceCapability>,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as IosDeviceInfo,
      packageInfo: null == packageInfo
          ? _value.packageInfo
          : packageInfo // ignore: cast_nullable_to_non_nullable
              as PackageInfo,
    ));
  }
}

/// @nodoc

class _$iOSHostPlatform extends iOSHostPlatform with DiagnosticableTreeMixin {
  _$iOSHostPlatform(
      {required this.deviceType,
      required final List<DeviceCapability> deviceCapabilities,
      required this.deviceInfo,
      required this.packageInfo})
      : _deviceCapabilities = deviceCapabilities,
        super._();

  @override
  final DeviceType deviceType;
  final List<DeviceCapability> _deviceCapabilities;
  @override
  List<DeviceCapability> get deviceCapabilities {
    if (_deviceCapabilities is EqualUnmodifiableListView)
      return _deviceCapabilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deviceCapabilities);
  }

  @override
  final IosDeviceInfo deviceInfo;
  @override
  final PackageInfo packageInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HostPlatform.iOS(deviceType: $deviceType, deviceCapabilities: $deviceCapabilities, deviceInfo: $deviceInfo, packageInfo: $packageInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HostPlatform.iOS'))
      ..add(DiagnosticsProperty('deviceType', deviceType))
      ..add(DiagnosticsProperty('deviceCapabilities', deviceCapabilities))
      ..add(DiagnosticsProperty('deviceInfo', deviceInfo))
      ..add(DiagnosticsProperty('packageInfo', packageInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$iOSHostPlatform &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            const DeepCollectionEquality()
                .equals(other._deviceCapabilities, _deviceCapabilities) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.packageInfo, packageInfo) ||
                other.packageInfo == packageInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      deviceType,
      const DeepCollectionEquality().hash(_deviceCapabilities),
      deviceInfo,
      packageInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$iOSHostPlatformCopyWith<_$iOSHostPlatform> get copyWith =>
      __$$iOSHostPlatformCopyWithImpl<_$iOSHostPlatform>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            AndroidDeviceInfo deviceInfo,
            PackageInfo packageInfo)
        android,
    required TResult Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            IosDeviceInfo deviceInfo,
            PackageInfo packageInfo)
        iOS,
  }) {
    return iOS(deviceType, deviceCapabilities, deviceInfo, packageInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            AndroidDeviceInfo deviceInfo,
            PackageInfo packageInfo)?
        android,
    TResult? Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            IosDeviceInfo deviceInfo,
            PackageInfo packageInfo)?
        iOS,
  }) {
    return iOS?.call(deviceType, deviceCapabilities, deviceInfo, packageInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            AndroidDeviceInfo deviceInfo,
            PackageInfo packageInfo)?
        android,
    TResult Function(
            DeviceType deviceType,
            List<DeviceCapability> deviceCapabilities,
            IosDeviceInfo deviceInfo,
            PackageInfo packageInfo)?
        iOS,
    required TResult orElse(),
  }) {
    if (iOS != null) {
      return iOS(deviceType, deviceCapabilities, deviceInfo, packageInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidHostPlatform value) android,
    required TResult Function(iOSHostPlatform value) iOS,
  }) {
    return iOS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidHostPlatform value)? android,
    TResult? Function(iOSHostPlatform value)? iOS,
  }) {
    return iOS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidHostPlatform value)? android,
    TResult Function(iOSHostPlatform value)? iOS,
    required TResult orElse(),
  }) {
    if (iOS != null) {
      return iOS(this);
    }
    return orElse();
  }
}

abstract class iOSHostPlatform extends HostPlatform {
  factory iOSHostPlatform(
      {required final DeviceType deviceType,
      required final List<DeviceCapability> deviceCapabilities,
      required final IosDeviceInfo deviceInfo,
      required final PackageInfo packageInfo}) = _$iOSHostPlatform;
  iOSHostPlatform._() : super._();

  @override
  DeviceType get deviceType;
  @override
  List<DeviceCapability> get deviceCapabilities;
  @override
  IosDeviceInfo get deviceInfo;
  @override
  PackageInfo get packageInfo;
  @override
  @JsonKey(ignore: true)
  _$$iOSHostPlatformCopyWith<_$iOSHostPlatform> get copyWith =>
      throw _privateConstructorUsedError;
}
