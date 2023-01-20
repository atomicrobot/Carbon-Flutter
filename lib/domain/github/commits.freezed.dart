// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Commit _$CommitFromJson(Map<String, dynamic> json) {
  return _Commit.fromJson(json);
}

/// @nodoc
mixin _$Commit {
  CommitDetails get commit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitCopyWith<Commit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitCopyWith<$Res> {
  factory $CommitCopyWith(Commit value, $Res Function(Commit) then) =
      _$CommitCopyWithImpl<$Res, Commit>;
  @useResult
  $Res call({CommitDetails commit});

  $CommitDetailsCopyWith<$Res> get commit;
}

/// @nodoc
class _$CommitCopyWithImpl<$Res, $Val extends Commit>
    implements $CommitCopyWith<$Res> {
  _$CommitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commit = null,
  }) {
    return _then(_value.copyWith(
      commit: null == commit
          ? _value.commit
          : commit // ignore: cast_nullable_to_non_nullable
              as CommitDetails,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommitDetailsCopyWith<$Res> get commit {
    return $CommitDetailsCopyWith<$Res>(_value.commit, (value) {
      return _then(_value.copyWith(commit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CommitCopyWith<$Res> implements $CommitCopyWith<$Res> {
  factory _$$_CommitCopyWith(_$_Commit value, $Res Function(_$_Commit) then) =
      __$$_CommitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommitDetails commit});

  @override
  $CommitDetailsCopyWith<$Res> get commit;
}

/// @nodoc
class __$$_CommitCopyWithImpl<$Res>
    extends _$CommitCopyWithImpl<$Res, _$_Commit>
    implements _$$_CommitCopyWith<$Res> {
  __$$_CommitCopyWithImpl(_$_Commit _value, $Res Function(_$_Commit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commit = null,
  }) {
    return _then(_$_Commit(
      commit: null == commit
          ? _value.commit
          : commit // ignore: cast_nullable_to_non_nullable
              as CommitDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Commit extends _Commit with DiagnosticableTreeMixin {
  const _$_Commit({required this.commit}) : super._();

  factory _$_Commit.fromJson(Map<String, dynamic> json) =>
      _$$_CommitFromJson(json);

  @override
  final CommitDetails commit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Commit(commit: $commit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Commit'))
      ..add(DiagnosticsProperty('commit', commit));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Commit &&
            (identical(other.commit, commit) || other.commit == commit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, commit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommitCopyWith<_$_Commit> get copyWith =>
      __$$_CommitCopyWithImpl<_$_Commit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommitToJson(
      this,
    );
  }
}

abstract class _Commit extends Commit {
  const factory _Commit({required final CommitDetails commit}) = _$_Commit;
  const _Commit._() : super._();

  factory _Commit.fromJson(Map<String, dynamic> json) = _$_Commit.fromJson;

  @override
  CommitDetails get commit;
  @override
  @JsonKey(ignore: true)
  _$$_CommitCopyWith<_$_Commit> get copyWith =>
      throw _privateConstructorUsedError;
}

CommitDetails _$CommitDetailsFromJson(Map<String, dynamic> json) {
  return _CommitDetails.fromJson(json);
}

/// @nodoc
mixin _$CommitDetails {
  String get message => throw _privateConstructorUsedError;
  Author get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitDetailsCopyWith<CommitDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitDetailsCopyWith<$Res> {
  factory $CommitDetailsCopyWith(
          CommitDetails value, $Res Function(CommitDetails) then) =
      _$CommitDetailsCopyWithImpl<$Res, CommitDetails>;
  @useResult
  $Res call({String message, Author author});

  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class _$CommitDetailsCopyWithImpl<$Res, $Val extends CommitDetails>
    implements $CommitDetailsCopyWith<$Res> {
  _$CommitDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? author = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res> get author {
    return $AuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CommitDetailsCopyWith<$Res>
    implements $CommitDetailsCopyWith<$Res> {
  factory _$$_CommitDetailsCopyWith(
          _$_CommitDetails value, $Res Function(_$_CommitDetails) then) =
      __$$_CommitDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Author author});

  @override
  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class __$$_CommitDetailsCopyWithImpl<$Res>
    extends _$CommitDetailsCopyWithImpl<$Res, _$_CommitDetails>
    implements _$$_CommitDetailsCopyWith<$Res> {
  __$$_CommitDetailsCopyWithImpl(
      _$_CommitDetails _value, $Res Function(_$_CommitDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? author = null,
  }) {
    return _then(_$_CommitDetails(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommitDetails extends _CommitDetails with DiagnosticableTreeMixin {
  const _$_CommitDetails({required this.message, required this.author})
      : super._();

  factory _$_CommitDetails.fromJson(Map<String, dynamic> json) =>
      _$$_CommitDetailsFromJson(json);

  @override
  final String message;
  @override
  final Author author;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommitDetails(message: $message, author: $author)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommitDetails'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('author', author));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommitDetails &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommitDetailsCopyWith<_$_CommitDetails> get copyWith =>
      __$$_CommitDetailsCopyWithImpl<_$_CommitDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommitDetailsToJson(
      this,
    );
  }
}

abstract class _CommitDetails extends CommitDetails {
  const factory _CommitDetails(
      {required final String message,
      required final Author author}) = _$_CommitDetails;
  const _CommitDetails._() : super._();

  factory _CommitDetails.fromJson(Map<String, dynamic> json) =
      _$_CommitDetails.fromJson;

  @override
  String get message;
  @override
  Author get author;
  @override
  @JsonKey(ignore: true)
  _$$_CommitDetailsCopyWith<_$_CommitDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$_AuthorCopyWith(_$_Author value, $Res Function(_$_Author) then) =
      __$$_AuthorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_AuthorCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$_Author>
    implements _$$_AuthorCopyWith<$Res> {
  __$$_AuthorCopyWithImpl(_$_Author _value, $Res Function(_$_Author) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_Author(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Author extends _Author with DiagnosticableTreeMixin {
  const _$_Author({required this.name}) : super._();

  factory _$_Author.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorFromJson(json);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Author(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Author'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Author &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorCopyWith<_$_Author> get copyWith =>
      __$$_AuthorCopyWithImpl<_$_Author>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorToJson(
      this,
    );
  }
}

abstract class _Author extends Author {
  const factory _Author({required final String name}) = _$_Author;
  const _Author._() : super._();

  factory _Author.fromJson(Map<String, dynamic> json) = _$_Author.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorCopyWith<_$_Author> get copyWith =>
      throw _privateConstructorUsedError;
}
