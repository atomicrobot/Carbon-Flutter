import 'dart:convert';

import 'package:carbon_flutter/domain/github/commits.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Commits', () {
    test('Should be able to create a commit from a json array', () {
      const json = '[ {"commit": { "message": "testMessage", "author": { "name": "testName" } } } ]';

      expect(
          Commit.fromJsonArray(jsonDecode(json)),
          equals(const [
            Commit(
              commit: CommitDetails(
                message: 'testMessage',
                author: Author(name: 'testName'),
              ),
            ),
          ]));
    });

    test('Should be able to easily get message and name', () {
      const commit = Commit(
        commit: CommitDetails(
          message: 'testMessage',
          author: Author(name: 'testName'),
        ),
      );
      expect(commit.message, equals('testMessage'));
      expect(commit.author, equals('testName'));
    });
  });
}
