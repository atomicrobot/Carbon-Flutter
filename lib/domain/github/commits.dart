import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'commits.freezed.dart';
part 'commits.g.dart';

@freezed
class Commit with _$Commit {
  const factory Commit({
    required CommitDetails commit,
  }) = _Commit;

  const Commit._();

  factory Commit.fromJson(Map<String, dynamic> json) => _$CommitFromJson(json);

  static List<Commit> fromJsonArray(List json) {
    return json.map((item) => Commit.fromJson(item)).toList();
  }

  String get message => commit.message;

  String get author => commit.author.name;
}

@freezed
class CommitDetails with _$CommitDetails {
  const factory CommitDetails({
    required String message,
    required Author author,
  }) = _CommitDetails;

  const CommitDetails._();

  factory CommitDetails.fromJson(Map<String, dynamic> json) => _$CommitDetailsFromJson(json);
}

@freezed
class Author with _$Author {
  const factory Author({
    required String name,
  }) = _Author;

  const Author._();

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}
