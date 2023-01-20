import 'package:carbon_flutter/ui/design_system/reference/reference_scaffold.dart';
import 'package:flutter/material.dart';

class DesignSystemSwitchesScreen extends StatefulWidget {
  const DesignSystemSwitchesScreen({super.key});

  @override
  State<DesignSystemSwitchesScreen> createState() => _DesignSystemSwitchesScreenState();
}

class _DesignSystemSwitchesScreenState extends State<DesignSystemSwitchesScreen> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return DesignSystemReferenceScaffold(
      title: 'Switches',
      child: ListView(
        children: [
          ListTile(
            title: const Text('Switch (Enabled)'),
            leading: Switch(
              value: _switchValue,
              onChanged: (value) => setState(() => _switchValue = value),
            ),
          ),
          const ListTile(
            title: Text('Switch (Disabled / Active)'),
            leading: Switch(
              value: true,
              onChanged: null,
            ),
          ),
          const ListTile(
            title: Text('Switch (Disabled / Inactive)'),
            leading: Switch(
              value: false,
              onChanged: null,
            ),
          ),
        ],
      ),
    );
  }
}
