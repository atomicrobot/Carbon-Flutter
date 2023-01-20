import 'package:carbon_flutter/gen/assets.gen.dart';
import 'package:carbon_flutter/ui/design_system/reference/reference_scaffold.dart';
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
          ListTile(
            title: SvgPicture.asset(Assets.images.logo),
          ),
          ListTile(
            title: SvgPicture.asset(Assets.images.logoDark),
          ),
        ],
      ),
    );
  }
}
