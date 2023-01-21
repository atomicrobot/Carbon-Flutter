import 'package:carbon_flutter/assets/assets.gen.dart';
import 'package:carbon_flutter/ui/design_system/reference/reference_scaffold.dart';
import 'package:carbon_flutter/ui/widgets/brightness_aware.dart';
import 'package:flutter/material.dart';

class DesignSystemLogosScreen extends StatelessWidget {
  const DesignSystemLogosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DesignSystemReferenceScaffold(
      title: 'Logos',
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: BrightnessAware(
              light: (context) => Assets.images.logo.svg(),
              dark: (context) => Assets.images.logoDark.svg(),
            ),
          )
        ],
      ),
    );
  }
}
