import 'package:carbon_flutter/ui/design_system/reference/home.dart';
import 'package:carbon_flutter/ui/screens/main_screen.dart';
import 'package:carbon_flutter/ui/screens/settings_screen.dart';
import 'package:go_router/go_router.dart';

final navigationRouter = GoRouter(
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
