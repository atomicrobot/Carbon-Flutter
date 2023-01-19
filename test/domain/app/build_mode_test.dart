import 'package:flutter_test/flutter_test.dart';
import 'package:carbon_flutter/domain/app/build_mode.dart';

void main() {
  group('BuildMode', () {
    test('Should be able to create a debug build mode', () {
      final mode = BuildMode.debug();
      mode.maybeMap(
        debug: (debug) {},
        orElse: () => fail('Not a debug build mode'),
      );
    });

    test('Should be able to create a profile build mode', () {
      final mode = BuildMode.profile();
      mode.maybeMap(
        profile: (profile) {},
        orElse: () => fail('Not a profile build mode'),
      );
    });

    test('Should be able to create a release build mode', () {
      final mode = BuildMode.release();
      mode.maybeMap(
        release: (release) {},
        orElse: () => fail('Not a release build mode'),
      );
    });
  });
}
