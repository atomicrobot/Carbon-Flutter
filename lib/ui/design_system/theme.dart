import 'package:flutter/material.dart';

// Sizes
const double screenPadding = 16.0;
const double verticalSeparation = 24.0;

const _lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFB02E12),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFFFDAD3),
  onPrimaryContainer: Color(0xFF3D0600),
  secondary: Color(0xFFB02E12),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFFFDAD3),
  onSecondaryContainer: Color(0xFF3D0600),
  tertiary: Color(0xFFB02E12),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFFDAD3),
  onTertiaryContainer: Color(0xFF3D0600),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFF8FDFF),
  onBackground: Color(0xFF001F25),
  surface: Color(0xFFF8FDFF),
  onSurface: Color(0xFF001F25),
  surfaceVariant: Color(0xFFF5DDD8),
  onSurfaceVariant: Color(0xFF534340),
  outline: Color(0xFF85736F),
  onInverseSurface: Color(0xFFD6F6FF),
  inverseSurface: Color(0xFF00363F),
  inversePrimary: Color(0xFFFFB4A4),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFB02E12),
  outlineVariant: Color(0xFFD8C2BD),
  scrim: Color(0xFF000000),
);

const _darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFB4A4),
  onPrimary: Color(0xFF630E00),
  primaryContainer: Color(0xFF8C1800),
  onPrimaryContainer: Color(0xFFFFDAD3),
  secondary: Color(0xFFFFB4A4),
  onSecondary: Color(0xFF630E00),
  secondaryContainer: Color(0xFF8C1800),
  onSecondaryContainer: Color(0xFFFFDAD3),
  tertiary: Color(0xFFFFB4A4),
  onTertiary: Color(0xFF630E00),
  tertiaryContainer: Color(0xFF8C1800),
  onTertiaryContainer: Color(0xFFFFDAD3),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF001F25),
  onBackground: Color(0xFFA6EEFF),
  surface: Color(0xFF001F25),
  onSurface: Color(0xFFA6EEFF),
  surfaceVariant: Color(0xFF534340),
  onSurfaceVariant: Color(0xFFD8C2BD),
  outline: Color(0xFFA08C88),
  onInverseSurface: Color(0xFF001F25),
  inverseSurface: Color(0xFFA6EEFF),
  inversePrimary: Color(0xFFB02E12),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFFFB4A4),
  outlineVariant: Color(0xFF534340),
  scrim: Color(0xFF000000),
);

// Theme
final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _lightColorScheme,
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _darkColorScheme,
);
