import 'package:carbon_flutter/globals.dart';
import 'package:carbon_flutter/l10n/localizations.dart';
import 'package:carbon_flutter/providers.dart';
import 'package:carbon_flutter/ui/design_system/theme.dart';
import 'package:carbon_flutter/ui/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appConfiguration = ref.watch(appConfigurationProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: appConfiguration.supportedLocales,
      locale: appConfiguration.locale,
      // localeResolutionCallback: (locale, supportedLocales) {
      //   if (locale != null && supportedLocales.contains(Locale(locale.languageCode))) {
      //     return locale;
      //   } else {
      //     return const Locale('en');
      //   }
      // },
      theme: appConfiguration.darkMode ? darkTheme : lightTheme,
      onGenerateTitle: (context) => context.localizations.appTitle,
      scaffoldMessengerKey: snackbarKey,
      routerConfig: navigationRouter,
    );
  }
}
