import 'package:carbon_flutter/ui/design_system/reference/reference_scaffold.dart';
import 'package:flutter/material.dart';

class DesignSystemRadiosScreen extends StatefulWidget {
  const DesignSystemRadiosScreen({super.key});

  @override
  State<DesignSystemRadiosScreen> createState() => _DesignSystemRadiosScreenState();
}

class _DesignSystemRadiosScreenState extends State<DesignSystemRadiosScreen> {
  final List<String> _options = ['Apple', 'Banana', 'Cherry'];
  String? _selectedRadioOption = 'Apple';

  @override
  Widget build(BuildContext context) {
    return DesignSystemReferenceScaffold(
      title: 'Radios',
      child: ListView(
        children: [
          for (var option in _options)
            ListTile(
              title: Text(option),
              leading: Radio<String>(
                value: option,
                groupValue: _selectedRadioOption,
                onChanged: (value) => setState(() => _selectedRadioOption = value),
              ),
            ),
          const ListTile(
            title: Text('Radio (Disabled / Active)'),
            leading: Radio<bool>(
              value: true,
              groupValue: true,
              onChanged: null,
            ),
          ),
          const ListTile(
            title: Text('Radio (Disabled / Inactive)'),
            leading: Radio<bool>(
              value: false,
              groupValue: true,
              onChanged: null,
            ),
          ),
        ],
      ),
    );
  }
}
