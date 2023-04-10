import 'package:carbon_flutter/app/logger.dart';
import 'package:carbon_flutter/ui/design_system/reference/home.dart';
import 'package:carbon_flutter/ui/screens/main_screen.dart';
import 'package:carbon_flutter/ui/screens/settings_screen.dart';
import 'package:go_router/go_router.dart';

bool get _disableDebugLogDiagnosticsHack {
  Logger('GoRouter').level = Level.OFF;
  return false;
}

// GoRouter exposes its diagnostic logs as a side effect to using the logging
// library, whether we want those logs or not. This is wrapped in an accessor
// so turning this off is tied to the instantiation of GoRouter.
// Follow https://github.com/flutter/flutter/issues/109263 for if this can be
// removed in the future.
final navigationRouter = GoRouter(
  debugLogDiagnostics: _disableDebugLogDiagnosticsHack,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
      routes: [
        GoRoute(
          path: 'settings',
          builder: (context, state) => const SettingsScreen(),
        ),
        GoRoute(
          path: 'design_system',
          builder: (context, state) => const DesignSystemScreen(),
        ),
      ],
    ),
  ],
);
