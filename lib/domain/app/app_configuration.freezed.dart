// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppConfiguration {
  bool get darkMode => throw _privateConstructorUsedError;
  List<Locale> get supportedLocales => throw _privateConstructorUsedError;
  Locale get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppConfigurationCopyWith<AppConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigurationCopyWith<$Res> {
  factory $AppConfigurationCopyWith(
          AppConfiguration value, $Res Function(AppConfiguration) then) =
      _$AppConfigurationCopyWithImpl<$Res, AppConfiguration>;
  @useResult
  $Res call({bool darkMode, List<Locale> supportedLocales, Locale locale});
}

/// @nodoc
class _$AppConfigurationCopyWithImpl<$Res, $Val extends AppConfiguration>
    implements $AppConfigurationCopyWith<$Res> {
  _$AppConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? darkMode = null,
    Object? supportedLocales = null,
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      darkMode: null == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      supportedLocales: null == supportedLocales
          ? _value.supportedLocales
          : supportedLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppConfigurationCopyWith<$Res>
    implements $AppConfigurationCopyWith<$Res> {
  factory _$$_AppConfigurationCopyWith(
          _$_AppConfiguration value, $Res Function(_$_AppConfiguration) then) =
      __$$_AppConfigurationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool darkMode, List<Locale> supportedLocales, Locale locale});
}

/// @nodoc
class __$$_AppConfigurationCopyWithImpl<$Res>
    extends _$AppConfigurationCopyWithImpl<$Res, _$_AppConfiguration>
    implements _$$_AppConfigurationCopyWith<$Res> {
  __$$_AppConfigurationCopyWithImpl(
      _$_AppConfiguration _value, $Res Function(_$_AppConfiguration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? darkMode = null,
    Object? supportedLocales = null,
    Object? locale = null,
  }) {
    return _then(_$_AppConfiguration(
      darkMode: null == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      supportedLocales: null == supportedLocales
          ? _value._supportedLocales
          : supportedLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_AppConfiguration extends _AppConfiguration {
  const _$_AppConfiguration(
      {required this.darkMode,
      required final List<Locale> supportedLocales,
      required this.locale})
      : _supportedLocales = supportedLocales,
        super._();

  @override
  final bool darkMode;
  final List<Locale> _supportedLocales;
  @override
  List<Locale> get supportedLocales {
    if (_supportedLocales is EqualUnmodifiableListView)
      return _supportedLocales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportedLocales);
  }

  @override
  final Locale locale;

  @override
  String toString() {
    return 'AppConfiguration(darkMode: $darkMode, supportedLocales: $supportedLocales, locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppConfiguration &&
            (identical(other.darkMode, darkMode) ||
                other.darkMode == darkMode) &&
            const DeepCollectionEquality()
                .equals(other._supportedLocales, _supportedLocales) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, darkMode,
      const DeepCollectionEquality().hash(_supportedLocales), locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppConfigurationCopyWith<_$_AppConfiguration> get copyWith =>
      __$$_AppConfigurationCopyWithImpl<_$_AppConfiguration>(this, _$identity);
}

abstract class _AppConfiguration extends AppConfiguration {
  const factory _AppConfiguration(
      {required final bool darkMode,
      required final List<Locale> supportedLocales,
      required final Locale locale}) = _$_AppConfiguration;
  const _AppConfiguration._() : super._();

  @override
  bool get darkMode;
  @override
  List<Locale> get supportedLocales;
  @override
  Locale get locale;
  @override
  @JsonKey(ignore: true)
  _$$_AppConfigurationCopyWith<_$_AppConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}
