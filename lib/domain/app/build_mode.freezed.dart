// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'build_mode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BuildMode {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() debug,
    required TResult Function() profile,
    required TResult Function() release,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? debug,
    TResult? Function()? profile,
    TResult? Function()? release,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? debug,
    TResult Function()? profile,
    TResult Function()? release,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DebugBuildMode value) debug,
    required TResult Function(ProfileBuildMode value) profile,
    required TResult Function(ReleaseBuildMode value) release,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DebugBuildMode value)? debug,
    TResult? Function(ProfileBuildMode value)? profile,
    TResult? Function(ReleaseBuildMode value)? release,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DebugBuildMode value)? debug,
    TResult Function(ProfileBuildMode value)? profile,
    TResult Function(ReleaseBuildMode value)? release,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildModeCopyWith<$Res> {
  factory $BuildModeCopyWith(BuildMode value, $Res Function(BuildMode) then) =
      _$BuildModeCopyWithImpl<$Res, BuildMode>;
}

/// @nodoc
class _$BuildModeCopyWithImpl<$Res, $Val extends BuildMode>
    implements $BuildModeCopyWith<$Res> {
  _$BuildModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DebugBuildModeCopyWith<$Res> {
  factory _$$DebugBuildModeCopyWith(
          _$DebugBuildMode value, $Res Function(_$DebugBuildMode) then) =
      __$$DebugBuildModeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DebugBuildModeCopyWithImpl<$Res>
    extends _$BuildModeCopyWithImpl<$Res, _$DebugBuildMode>
    implements _$$DebugBuildModeCopyWith<$Res> {
  __$$DebugBuildModeCopyWithImpl(
      _$DebugBuildMode _value, $Res Function(_$DebugBuildMode) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DebugBuildMode extends DebugBuildMode with DiagnosticableTreeMixin {
  _$DebugBuildMode() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BuildMode.debug()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BuildMode.debug'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DebugBuildMode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() debug,
    required TResult Function() profile,
    required TResult Function() release,
  }) {
    return debug();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? debug,
    TResult? Function()? profile,
    TResult? Function()? release,
  }) {
    return debug?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? debug,
    TResult Function()? profile,
    TResult Function()? release,
    required TResult orElse(),
  }) {
    if (debug != null) {
      return debug();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DebugBuildMode value) debug,
    required TResult Function(ProfileBuildMode value) profile,
    required TResult Function(ReleaseBuildMode value) release,
  }) {
    return debug(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DebugBuildMode value)? debug,
    TResult? Function(ProfileBuildMode value)? profile,
    TResult? Function(ReleaseBuildMode value)? release,
  }) {
    return debug?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DebugBuildMode value)? debug,
    TResult Function(ProfileBuildMode value)? profile,
    TResult Function(ReleaseBuildMode value)? release,
    required TResult orElse(),
  }) {
    if (debug != null) {
      return debug(this);
    }
    return orElse();
  }
}

abstract class DebugBuildMode extends BuildMode {
  factory DebugBuildMode() = _$DebugBuildMode;
  DebugBuildMode._() : super._();
}

/// @nodoc
abstract class _$$ProfileBuildModeCopyWith<$Res> {
  factory _$$ProfileBuildModeCopyWith(
          _$ProfileBuildMode value, $Res Function(_$ProfileBuildMode) then) =
      __$$ProfileBuildModeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileBuildModeCopyWithImpl<$Res>
    extends _$BuildModeCopyWithImpl<$Res, _$ProfileBuildMode>
    implements _$$ProfileBuildModeCopyWith<$Res> {
  __$$ProfileBuildModeCopyWithImpl(
      _$ProfileBuildMode _value, $Res Function(_$ProfileBuildMode) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileBuildMode extends ProfileBuildMode with DiagnosticableTreeMixin {
  _$ProfileBuildMode() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BuildMode.profile()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BuildMode.profile'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileBuildMode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() debug,
    required TResult Function() profile,
    required TResult Function() release,
  }) {
    return profile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? debug,
    TResult? Function()? profile,
    TResult? Function()? release,
  }) {
    return profile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? debug,
    TResult Function()? profile,
    TResult Function()? release,
    required TResult orElse(),
  }) {
    if (profile != null) {
      return profile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DebugBuildMode value) debug,
    required TResult Function(ProfileBuildMode value) profile,
    required TResult Function(ReleaseBuildMode value) release,
  }) {
    return profile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DebugBuildMode value)? debug,
    TResult? Function(ProfileBuildMode value)? profile,
    TResult? Function(ReleaseBuildMode value)? release,
  }) {
    return profile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DebugBuildMode value)? debug,
    TResult Function(ProfileBuildMode value)? profile,
    TResult Function(ReleaseBuildMode value)? release,
    required TResult orElse(),
  }) {
    if (profile != null) {
      return profile(this);
    }
    return orElse();
  }
}

abstract class ProfileBuildMode extends BuildMode {
  factory ProfileBuildMode() = _$ProfileBuildMode;
  ProfileBuildMode._() : super._();
}

/// @nodoc
abstract class _$$ReleaseBuildModeCopyWith<$Res> {
  factory _$$ReleaseBuildModeCopyWith(
          _$ReleaseBuildMode value, $Res Function(_$ReleaseBuildMode) then) =
      __$$ReleaseBuildModeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReleaseBuildModeCopyWithImpl<$Res>
    extends _$BuildModeCopyWithImpl<$Res, _$ReleaseBuildMode>
    implements _$$ReleaseBuildModeCopyWith<$Res> {
  __$$ReleaseBuildModeCopyWithImpl(
      _$ReleaseBuildMode _value, $Res Function(_$ReleaseBuildMode) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReleaseBuildMode extends ReleaseBuildMode with DiagnosticableTreeMixin {
  _$ReleaseBuildMode() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BuildMode.release()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BuildMode.release'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReleaseBuildMode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() debug,
    required TResult Function() profile,
    required TResult Function() release,
  }) {
    return release();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? debug,
    TResult? Function()? profile,
    TResult? Function()? release,
  }) {
    return release?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? debug,
    TResult Function()? profile,
    TResult Function()? release,
    required TResult orElse(),
  }) {
    if (release != null) {
      return release();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DebugBuildMode value) debug,
    required TResult Function(ProfileBuildMode value) profile,
    required TResult Function(ReleaseBuildMode value) release,
  }) {
    return release(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DebugBuildMode value)? debug,
    TResult? Function(ProfileBuildMode value)? profile,
    TResult? Function(ReleaseBuildMode value)? release,
  }) {
    return release?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DebugBuildMode value)? debug,
    TResult Function(ProfileBuildMode value)? profile,
    TResult Function(ReleaseBuildMode value)? release,
    required TResult orElse(),
  }) {
    if (release != null) {
      return release(this);
    }
    return orElse();
  }
}

abstract class ReleaseBuildMode extends BuildMode {
  factory ReleaseBuildMode() = _$ReleaseBuildMode;
  ReleaseBuildMode._() : super._();
}
