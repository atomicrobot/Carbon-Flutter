import 'package:carbon_flutter/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// See: https://github.com/flutter/flutter/issues/44482#issuecomment-926795865
class BrightnessAware extends ConsumerWidget {
  const BrightnessAware({
    super.key,
    required this.light,
    required this.dark,
  });

  final WidgetBuilder light;
  final WidgetBuilder dark;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(appConfigurationProvider).darkMode;
    return darkMode ? dark(context) : light(context);
  }
}
