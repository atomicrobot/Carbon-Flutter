import 'package:carbon_flutter/ui/design_system/reference/reference_scaffold.dart';
import 'package:flutter/material.dart';

class DesignSystemButtonsScreen extends StatefulWidget {
  const DesignSystemButtonsScreen({super.key});

  @override
  State<DesignSystemButtonsScreen> createState() => _DesignSystemButtonsScreenState();
}

class _DesignSystemButtonsScreenState extends State<DesignSystemButtonsScreen> {
  final List<String> _options = ['Apple', 'Banana', 'Cherry'];
  String? _selectedPopupMenuOption;
  String? _selectedDropdownMenuOption;

  @override
  Widget build(BuildContext context) {
    return DesignSystemReferenceScaffold(
      title: 'Buttons',
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: const Text('Text Button (Enabled)'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: null,
              child: Text('Text Button (Disabled)'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: null,
              child: Text('Elevated Button (Disabled)'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: null,
              child: Text('Outlined Button (Disabled)'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              tooltip: 'Icon Button',
              icon: const Icon(Icons.thumb_up),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: null,
              tooltip: 'Icon Button',
              icon: Icon(Icons.thumb_up),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PopupMenuButton<String>(
              initialValue: _selectedPopupMenuOption,
              // Callback that sets the selected popup menu item.
              onSelected: (item) => setState(() => _selectedPopupMenuOption = item),
              itemBuilder: (context) => _options
                  .map((item) => PopupMenuItem<String>(
                        value: item,
                        child: Text(item),
                      ))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              value: _selectedDropdownMenuOption,
              onChanged: (value) => setState(() => _selectedDropdownMenuOption = value),
              items: _options.map((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
