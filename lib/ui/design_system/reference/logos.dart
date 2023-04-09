import 'package:carbon_flutter/ui/design_system/reference/reference_scaffold.dart';
import 'package:carbon_flutter/ui/widgets/brightness_aware.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              light: (context) => SvgPicture.asset('assets/images/logo.svg'),
              dark: (context) => SvgPicture.asset('assets/images/logo_dark.svg'),
            ),
          )
        ],
      ),
    );
  }
}
