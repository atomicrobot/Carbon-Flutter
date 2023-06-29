import 'package:carbon_flutter/domain/app/build_flavor.dart';
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
    final buildFlavor = ref.watch(buildFlavorProvider);
    final buildMode = ref.watch(buildModeProvider);

    final appVersion = hostPlatform.packageInfo.version;
    final appBuildNumber = hostPlatform.packageInfo.buildNumber;

    final appBuildFlavor = (buildFlavor == BuildFlavor.dev) ? 'Development' : 'Production';

    final appBuildMode = buildMode.map(
      debug: (debug) => 'Debug',
      profile: (profile) => 'Profile',
      release: (release) => 'Release',
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations.navigation_settings),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text(context.localizations.setting_dark_mode),
            value: appConfiguration.darkMode,
            onChanged: (value) => ref.read(appConfigurationProvider.notifier).setDarkMode(value),
          ),
          const Divider(),
          ListTile(
            title: Text(context.localizations.setting_language),
            trailing: DropdownButton<Locale>(
              items: appConfiguration.supportedLocales.map<DropdownMenuItem<Locale>>((value) {
                return DropdownMenuItem<Locale>(
                  value: value,
                  child: Text('$value'),
                );
              }).toList(),
              value: appConfiguration.locale,
              onChanged: (value) => ref
                  .read(appConfigurationProvider.notifier)
                  .setLocale(value ?? appConfiguration.supportedLocales.first),
            ),
          ),
          const Divider(),
          ListTile(
            title: Text('v$appVersion b$appBuildNumber'),
            subtitle: Text('$appBuildFlavor $appBuildMode'),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
