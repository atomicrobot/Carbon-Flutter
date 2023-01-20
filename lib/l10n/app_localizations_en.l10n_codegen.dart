// coverage:ignore-file

import 'app_localizations.l10n_codegen.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Carbon Flutter';

  @override
  String get setting_dark_mode => 'Dark Mode';

  @override
  String get setting_language => 'Language';

  @override
  String get navigation_settings => 'Settings';

  @override
  String get navigation_design_system => 'Design System';
}
