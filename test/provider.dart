import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

// See: https://github.com/rrousselGit/riverpod/blob/master/packages/riverpod/test/utils.dart
ProviderContainer createProviderContainer({
  ProviderContainer? parent,
  List<Override> overrides = const [],
  List<ProviderObserver>? observers,
}) {
  final container = ProviderContainer(
    parent: parent,
    overrides: overrides,
    observers: observers,
  );
  addTearDown(container.dispose);
  return container;
}

class ProviderStateListener<T> {
  final List<T> states = [];

  void listen(T? previous, T next) => states.add(next);

  void reset() => states.clear();
}
