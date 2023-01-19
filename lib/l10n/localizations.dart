import 'package:flutter/material.dart';
import 'package:carbon_flutter/l10n/app_localizations.l10n_codegen.dart';

extension AppLocalizationsExtension on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this);
}
