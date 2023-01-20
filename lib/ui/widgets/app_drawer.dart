import 'package:carbon_flutter/l10n/localizations.dart';
import 'package:carbon_flutter/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buildFlavor = ref.watch(buildFlavorProvider);
    return ListView(
      children: [
        ListTile(
          title: Text(context.localizations.navigation_settings),
          onTap: () {
            Scaffold.of(context).closeDrawer();
            context.go('/settings');
          },
        ),
        if (buildFlavor.designSystemPreviewVisible)
          ListTile(
            title: Text(context.localizations.navigation_design_system),
            onTap: () {
              Scaffold.of(context).closeDrawer();
              context.go('/design_system');
            },
          ),
      ],
    );
  }
}
