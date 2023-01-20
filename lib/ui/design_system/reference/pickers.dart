import 'package:carbon_flutter/ui/design_system/reference/reference_scaffold.dart';
import 'package:flutter/material.dart';

class DesignSystemPickersScreen extends StatefulWidget {
  const DesignSystemPickersScreen({super.key});

  @override
  State<DesignSystemPickersScreen> createState() => _DesignSystemPickersScreenState();
}

class _DesignSystemPickersScreenState extends State<DesignSystemPickersScreen> {
  @override
  Widget build(BuildContext context) {
    return DesignSystemReferenceScaffold(
      title: 'Pickers',
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  firstDate: DateTime.now().subtract(const Duration(days: 7)),
                  lastDate: DateTime.now().add(const Duration(days: 7)),
                  initialDate: DateTime.now(),
                );
              },
              child: const Text('Show Date Picker'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                showDateRangePicker(
                  context: context,
                  firstDate: DateTime.now().subtract(const Duration(days: 7)),
                  lastDate: DateTime.now().add(const Duration(days: 7)),
                );
              },
              child: const Text('Show Date Range Picker'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
              },
              child: const Text('Show Time Picker'),
            ),
          ),
        ],
      ),
    );
  }
}
