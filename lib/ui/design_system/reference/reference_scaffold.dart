import 'package:carbon_flutter/l10n/localizations.dart';
import 'package:carbon_flutter/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const _textScaleOptions = [0.75, 1.0, 1.5, 2.0];
final _textScaleProvider = StateProvider<double>((ref) {
  return 1.0;
});

class DesignSystemReferenceScaffold extends ConsumerWidget {
  final String title;
  final Widget child;

  const DesignSystemReferenceScaffold({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaQueryData = MediaQuery.of(context).copyWith(
      textScaleFactor: ref.watch(_textScaleProvider),
    );

    return MediaQuery(
      data: mediaQueryData,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: child,
        endDrawer: Drawer(
          child: _SettingsDrawer(),
        ),
      ),
    );
  }
}

class _SettingsDrawer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appConfiguration = ref.watch(appConfigurationProvider);
    final textScale = ref.watch(_textScaleProvider);
    return ListView(
      children: [
        SwitchListTile(
          title: Text(context.localizations.setting_dark_mode),
          value: appConfiguration.darkMode,
          onChanged: (value) => ref.read(appConfigurationProvider.notifier).setDarkMode(value),
        ),
        ListTile(
          title: const Text('Text Scale'),
          trailing: DropdownButton<double>(
            items: _textScaleOptions.map<DropdownMenuItem<double>>((value) {
              return DropdownMenuItem<double>(
                value: value,
                child: Text('${value}x'),
              );
            }).toList(),
            value: textScale,
            onChanged: (value) => ref.read(_textScaleProvider.notifier).state = value!,
          ),
        ),
      ],
    );
  }
}
