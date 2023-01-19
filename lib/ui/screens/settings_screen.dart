import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:carbon_flutter/l10n/localizations.dart';
import 'package:carbon_flutter/providers.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appConfiguration = ref.watch(appConfigurationProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations.navigation_settings),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              title: Text(context.localizations.setting_dark_mode),
              leading: Switch(
                value: appConfiguration.darkMode,
                onChanged: (value) => ref.read(appConfigurationProvider.notifier).setDarkMode(value),
              ),
            ),
            for (final option in appConfiguration.supportedLocales)
              ListTile(
                title: Text(option.languageCode),
                leading: Radio<Locale>(
                  value: option,
                  groupValue: appConfiguration.locale,
                  onChanged: (value) => ref
                      .read(appConfigurationProvider.notifier)
                      .setLocale(value ?? appConfiguration.supportedLocales.first),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
