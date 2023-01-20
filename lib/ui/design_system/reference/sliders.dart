import 'package:carbon_flutter/ui/design_system/reference/reference_scaffold.dart';
import 'package:flutter/material.dart';

class DesignSystemSlidersScreen extends StatefulWidget {
  const DesignSystemSlidersScreen({super.key});

  @override
  State<DesignSystemSlidersScreen> createState() => _DesignSystemSlidersScreenState();
}

class _DesignSystemSlidersScreenState extends State<DesignSystemSlidersScreen> {
  double _currentSliderValue = 5;

  @override
  Widget build(BuildContext context) {
    return DesignSystemReferenceScaffold(
      title: 'Sliders',
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Slider(
              value: _currentSliderValue,
              min: 0.0,
              max: 10.0,
              divisions: 10,
              label: _currentSliderValue.round().toString(),
              onChanged: (value) => setState(() => _currentSliderValue = value),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Slider(
              value: 5.0,
              min: 0.0,
              max: 10.0,
              divisions: 10,
              label: _currentSliderValue.round().toString(),
              onChanged: null,
            ),
          ),
        ],
      ),
    );
  }
}
