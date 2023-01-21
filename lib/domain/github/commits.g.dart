// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file


part of 'commits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Commit _$$_CommitFromJson(Map<String, dynamic> json) => _$_Commit(
      commit: CommitDetails.fromJson(json['commit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CommitToJson(_$_Commit instance) => <String, dynamic>{
      'commit': instance.commit,
    };

_$_CommitDetails _$$_CommitDetailsFromJson(Map<String, dynamic> json) =>
    _$_CommitDetails(
      message: json['message'] as String,
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CommitDetailsToJson(_$_CommitDetails instance) =>
    <String, dynamic>{
      'message': instance.message,
      'author': instance.author,
    };

_$_Author _$$_AuthorFromJson(Map<String, dynamic> json) => _$_Author(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_AuthorToJson(_$_Author instance) => <String, dynamic>{
      'name': instance.name,
    };
