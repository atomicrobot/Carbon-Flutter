import 'package:flutter/material.dart';

// Sizes
const double screenPadding = 16.0;
const double verticalSeparation = 24.0;

// Theme
final darkTheme = ThemeData.dark(useMaterial3: true).copyWith();
final lightTheme = ThemeData.light(useMaterial3: true).copyWith();

// Extensions
extension TypographyExtension on BuildContext {
  TextStyle get headlineLargeTextStyle => Theme.of(this).textTheme.headlineLarge!;
  TextStyle get headlineMediumTextStyle => Theme.of(this).textTheme.headlineMedium!;
  TextStyle get headlineSmallTextStyle => Theme.of(this).textTheme.headlineSmall!;

  TextStyle get titleLargeTextStyle => Theme.of(this).textTheme.titleLarge!;
  TextStyle get titleMediumTextStyle => Theme.of(this).textTheme.titleMedium!;
  TextStyle get titleSmallTextStyle => Theme.of(this).textTheme.titleSmall!;

  TextStyle get labelLargeTextStyle => Theme.of(this).textTheme.labelLarge!;
  TextStyle get labelMediumTextStyle => Theme.of(this).textTheme.labelMedium!;
  TextStyle get labelSmallTextStyle => Theme.of(this).textTheme.labelSmall!;

  TextStyle get bodyLargeTextStyle => Theme.of(this).textTheme.bodyLarge!;
  TextStyle get bodyMediumTextStyle => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get bodySmallTextStyle => Theme.of(this).textTheme.bodySmall!;
}
