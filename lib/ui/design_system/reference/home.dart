import 'package:carbon_flutter/l10n/localizations.dart';
import 'package:carbon_flutter/ui/design_system/list.dart';
import 'package:carbon_flutter/ui/design_system/reference/buttons.dart';
import 'package:carbon_flutter/ui/design_system/reference/checkboxes.dart';
import 'package:carbon_flutter/ui/design_system/reference/colors.dart';
import 'package:carbon_flutter/ui/design_system/reference/icons.dart';
import 'package:carbon_flutter/ui/design_system/reference/logos.dart';
import 'package:carbon_flutter/ui/design_system/reference/pickers.dart';
import 'package:carbon_flutter/ui/design_system/reference/radios.dart';
import 'package:carbon_flutter/ui/design_system/reference/reference_scaffold.dart';
import 'package:carbon_flutter/ui/design_system/reference/sliders.dart';
import 'package:carbon_flutter/ui/design_system/reference/switches.dart';
import 'package:carbon_flutter/ui/design_system/reference/text_fields.dart';
import 'package:carbon_flutter/ui/design_system/reference/typography.dart';
import 'package:flutter/material.dart';

class DesignSystemScreen extends StatelessWidget {
  const DesignSystemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DesignSystemReferenceScaffold(
      title: context.localizations.navigation_design_system,
      child: ListView(
        children: [
          const ListTile(title: ListHeader('Atoms')),
          ListTile(
            title: const Text('Colors'),
            onTap: () => _push(context, () => const DesignSystemColorsScreen()),
          ),
          ListTile(
            title: const Text('Typography'),
            onTap: () => _push(context, () => const DesignSystemTypographyScreen()),
          ),
          ListTile(
            title: const Text('Logos'),
            onTap: () => _push(context, () => const DesignSystemLogosScreen()),
          ),
          ListTile(
            title: const Text('Icons'),
            onTap: () => _push(context, () => const DesignSystemIconsScreen()),
          ),
          const Divider(),
          const ListTile(title: ListHeader('Molecules')),
          ListTile(
            title: const Text('Buttons'),
            onTap: () => _push(context, () => const DesignSystemButtonsScreen()),
          ),
          ListTile(
            title: const Text('Checkboxes'),
            onTap: () => _push(context, () => const DesignSystemCheckboxesScreen()),
          ),
          ListTile(
            title: const Text('Radios'),
            onTap: () => _push(context, () => const DesignSystemRadiosScreen()),
          ),
          ListTile(
            title: const Text('Switches'),
            onTap: () => _push(context, () => const DesignSystemSwitchesScreen()),
          ),
          ListTile(
            title: const Text('Sliders'),
            onTap: () => _push(context, () => const DesignSystemSlidersScreen()),
          ),
          ListTile(
            title: const Text('Pickers'),
            onTap: () => _push(context, () => const DesignSystemPickersScreen()),
          ),
          ListTile(
            title: const Text('Text Fields'),
            onTap: () => _push(context, () => const DesignSystemTextFieldScreen()),
          ),
          const Divider(),
          const ListTile(title: ListHeader('Organisms')),
          ListTile(
            title: const Text('App Widget 1'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('App Widget 2'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  void _push(BuildContext context, Widget Function() builder) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => builder(),
      ),
    );
  }
}
