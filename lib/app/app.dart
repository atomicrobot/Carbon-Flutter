import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:carbon_flutter/globals.dart';

import 'package:carbon_flutter/l10n/app_localizations.l10n_codegen.dart';
import 'package:carbon_flutter/l10n/localizations.dart';
import 'package:carbon_flutter/providers.dart';
import 'package:carbon_flutter/ui/navigation.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appConfiguration = ref.watch(appConfigurationProvider);
    final theme = ref.watch(themeProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: appConfiguration.supportedLocales,
      locale: appConfiguration.locale,
      theme: theme,
      onGenerateTitle: (context) => context.localizations.appTitle,
      scaffoldMessengerKey: snackbarKey,
      routerConfig: navigationRouter,
    );
  }
}