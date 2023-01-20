import 'package:carbon_flutter/l10n/localizations.dart';
import 'package:carbon_flutter/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appConfiguration = ref.watch(appConfigurationProvider);
    final hostPlatform = ref.watch(hostPlatformProvider);
    final buildMode = ref.watch(buildModeProvider);
    final buildFlavor = ref.watch(buildFlavorProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations.navigation_settings),
      ),
      body: ListView(
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
          const Divider(),
          ListTile(
            title: Text(
              'Platform: ${hostPlatform.map(
                android: (android) => 'Android',
                iOS: (iOS) => 'iOS',
              )}',
            ),
          ),
          ListTile(
            title: Text(
              'Build Mode: ${buildMode.map(
                debug: (debug) => 'Debug',
                profile: (profile) => 'Profile',
                release: (release) => 'Release',
              )}',
            ),
          ),
          ListTile(
            title: Text(
              'Build Flavor: ${buildFlavor.map(
                dev: (dev) => 'Development',
                prod: (prod) => 'Production',
              )}',
            ),
          ),
          const Divider(),
          ListTile(
            title: Text(
              'App Version: ${hostPlatform.packageInfo.version}',
            ),
          ),
          ListTile(
            title: Text(
              'App Build: ${hostPlatform.packageInfo.buildNumber}',
            ),
          ),
        ],
      ),
    );
  }
}
