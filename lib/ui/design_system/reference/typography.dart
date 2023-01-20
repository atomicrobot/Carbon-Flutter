import 'package:carbon_flutter/ui/design_system/reference/reference_scaffold.dart';
import 'package:carbon_flutter/ui/design_system/theme.dart';
import 'package:flutter/material.dart';

class DesignSystemTypographyScreen extends StatelessWidget {
  const DesignSystemTypographyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DesignSystemReferenceScaffold(
      title: 'Typography',
      child: Padding(
        padding: const EdgeInsets.all(screenPadding),
        child: ListView(
          children: [
            Text('Headline Large', style: context.headlineLargeTextStyle),
            Text('Headline Medium', style: context.headlineMediumTextStyle),
            Text('Headline Small', style: context.headlineSmallTextStyle),
            const Divider(),
            Text('Title Large', style: context.titleLargeTextStyle),
            Text('Title Medium', style: context.titleMediumTextStyle),
            Text('Title Small', style: context.titleSmallTextStyle),
            const Divider(),
            Text('Label Large', style: context.labelLargeTextStyle),
            Text('Label Medium', style: context.labelMediumTextStyle),
            Text('Label Small', style: context.labelSmallTextStyle),
            const Divider(),
            Text('Body Large', style: context.bodyLargeTextStyle),
            Text('Body Medium', style: context.bodyMediumTextStyle),
            Text('Body Small', style: context.bodySmallTextStyle),
          ],
        ),
      ),
    );
  }
}
