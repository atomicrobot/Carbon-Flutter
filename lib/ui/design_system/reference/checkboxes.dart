import 'package:carbon_flutter/ui/design_system/reference/reference_scaffold.dart';
import 'package:flutter/material.dart';

class DesignSystemCheckboxesScreen extends StatefulWidget {
  const DesignSystemCheckboxesScreen({super.key});

  @override
  State<DesignSystemCheckboxesScreen> createState() => _DesignSystemCheckboxesScreenState();
}

class _DesignSystemCheckboxesScreenState extends State<DesignSystemCheckboxesScreen> {
  bool _bistateCheckboxValue = false;
  bool? _tristateCheckboxValue;

  @override
  Widget build(BuildContext context) {
    return DesignSystemReferenceScaffold(
      title: 'Checkboxes',
      child: ListView(
        children: [
          ListTile(
            title: const Text('Checkbox (Enabled)'),
            leading: Checkbox(
              value: _bistateCheckboxValue,
              onChanged: (value) => setState(() => _bistateCheckboxValue = value!),
            ),
          ),
          const ListTile(
            title: Text('Checkbox (Disabled / Active)'),
            leading: Checkbox(
              value: true,
              onChanged: null,
            ),
          ),
          const ListTile(
            title: Text('Checkbox (Disabled / Inactive)'),
            leading: Checkbox(
              value: false,
              onChanged: null,
            ),
          ),
          ListTile(
            title: const Text('Tristate Checkbox (Enabled)'),
            leading: Checkbox(
              tristate: true,
              value: _tristateCheckboxValue,
              onChanged: (value) => setState(() => _tristateCheckboxValue = value),
            ),
          ),
          const ListTile(
            title: Text('Tristate Checkbox (Disabled / Tristate)'),
            leading: Checkbox(
              tristate: true,
              value: null,
              onChanged: null,
            ),
          ),
        ],
      ),
    );
  }
}
