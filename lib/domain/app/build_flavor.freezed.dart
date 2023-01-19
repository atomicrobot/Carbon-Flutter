// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'build_flavor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BuildFlavor {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prod,
    required TResult Function() dev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? prod,
    TResult? Function()? dev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prod,
    TResult Function()? dev,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProdBuildFlavor value) prod,
    required TResult Function(DevBuildFlavor value) dev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProdBuildFlavor value)? prod,
    TResult? Function(DevBuildFlavor value)? dev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProdBuildFlavor value)? prod,
    TResult Function(DevBuildFlavor value)? dev,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildFlavorCopyWith<$Res> {
  factory $BuildFlavorCopyWith(
          BuildFlavor value, $Res Function(BuildFlavor) then) =
      _$BuildFlavorCopyWithImpl<$Res, BuildFlavor>;
}

/// @nodoc
class _$BuildFlavorCopyWithImpl<$Res, $Val extends BuildFlavor>
    implements $BuildFlavorCopyWith<$Res> {
  _$BuildFlavorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProdBuildFlavorCopyWith<$Res> {
  factory _$$ProdBuildFlavorCopyWith(
          _$ProdBuildFlavor value, $Res Function(_$ProdBuildFlavor) then) =
      __$$ProdBuildFlavorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProdBuildFlavorCopyWithImpl<$Res>
    extends _$BuildFlavorCopyWithImpl<$Res, _$ProdBuildFlavor>
    implements _$$ProdBuildFlavorCopyWith<$Res> {
  __$$ProdBuildFlavorCopyWithImpl(
      _$ProdBuildFlavor _value, $Res Function(_$ProdBuildFlavor) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProdBuildFlavor extends ProdBuildFlavor with DiagnosticableTreeMixin {
  _$ProdBuildFlavor() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BuildFlavor.prod()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BuildFlavor.prod'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProdBuildFlavor);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prod,
    required TResult Function() dev,
  }) {
    return prod();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? prod,
    TResult? Function()? dev,
  }) {
    return prod?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prod,
    TResult Function()? dev,
    required TResult orElse(),
  }) {
    if (prod != null) {
      return prod();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProdBuildFlavor value) prod,
    required TResult Function(DevBuildFlavor value) dev,
  }) {
    return prod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProdBuildFlavor value)? prod,
    TResult? Function(DevBuildFlavor value)? dev,
  }) {
    return prod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProdBuildFlavor value)? prod,
    TResult Function(DevBuildFlavor value)? dev,
    required TResult orElse(),
  }) {
    if (prod != null) {
      return prod(this);
    }
    return orElse();
  }
}

abstract class ProdBuildFlavor extends BuildFlavor {
  factory ProdBuildFlavor() = _$ProdBuildFlavor;
  ProdBuildFlavor._() : super._();
}

/// @nodoc
abstract class _$$DevBuildFlavorCopyWith<$Res> {
  factory _$$DevBuildFlavorCopyWith(
          _$DevBuildFlavor value, $Res Function(_$DevBuildFlavor) then) =
      __$$DevBuildFlavorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DevBuildFlavorCopyWithImpl<$Res>
    extends _$BuildFlavorCopyWithImpl<$Res, _$DevBuildFlavor>
    implements _$$DevBuildFlavorCopyWith<$Res> {
  __$$DevBuildFlavorCopyWithImpl(
      _$DevBuildFlavor _value, $Res Function(_$DevBuildFlavor) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DevBuildFlavor extends DevBuildFlavor with DiagnosticableTreeMixin {
  _$DevBuildFlavor() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BuildFlavor.dev()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BuildFlavor.dev'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DevBuildFlavor);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prod,
    required TResult Function() dev,
  }) {
    return dev();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? prod,
    TResult? Function()? dev,
  }) {
    return dev?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prod,
    TResult Function()? dev,
    required TResult orElse(),
  }) {
    if (dev != null) {
      return dev();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProdBuildFlavor value) prod,
    required TResult Function(DevBuildFlavor value) dev,
  }) {
    return dev(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProdBuildFlavor value)? prod,
    TResult? Function(DevBuildFlavor value)? dev,
  }) {
    return dev?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProdBuildFlavor value)? prod,
    TResult Function(DevBuildFlavor value)? dev,
    required TResult orElse(),
  }) {
    if (dev != null) {
      return dev(this);
    }
    return orElse();
  }
}

abstract class DevBuildFlavor extends BuildFlavor {
  factory DevBuildFlavor() = _$DevBuildFlavor;
  DevBuildFlavor._() : super._();
}
