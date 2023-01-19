import 'package:go_router/go_router.dart';
import 'package:carbon_flutter/ui/design_system/design_system_screen.dart';
import 'package:carbon_flutter/ui/screens/main_screen.dart';
import 'package:carbon_flutter/ui/screens/settings_screen.dart';

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
          routes: [
            GoRoute(
              path: 'colors',
              builder: (context, state) => const DesignSystemColorsScreen(),
            ),
            GoRoute(
              path: 'typography',
              builder: (context, state) => const DesignSystemTypographyScreen(),
            ),
            GoRoute(
              path: 'logos',
              builder: (context, state) => const DesignSystemLogosScreen(),
            ),
            GoRoute(
              path: 'icons',
              builder: (context, state) => const DesignSystemIconsScreen(),
            ),
            GoRoute(
              path: 'buttons',
              builder: (context, state) => const DesignSystemButtonsScreen(),
            ),
            GoRoute(
              path: 'checkboxes',
              builder: (context, state) => const DesignSystemCheckboxesScreen(),
            ),
            GoRoute(
              path: 'radios',
              builder: (context, state) => const DesignSystemRadiosScreen(),
            ),
            GoRoute(
              path: 'switches',
              builder: (context, state) => const DesignSystemSwitchesScreen(),
            ),
            GoRoute(
              path: 'sliders',
              builder: (context, state) => const DesignSystemSlidersScreen(),
            ),
            GoRoute(
              path: 'pickers',
              builder: (context, state) => const DesignSystemPickersScreen(),
            ),
            GoRoute(
              path: 'text_fields',
              builder: (context, state) => const DesignSystemTextFieldScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
