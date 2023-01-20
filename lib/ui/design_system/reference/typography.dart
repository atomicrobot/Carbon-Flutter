import 'package:carbon_flutter/ui/design_system/reference/reference_scaffold.dart';
import 'package:carbon_flutter/ui/design_system/theme.dart';
import 'package:carbon_flutter/ui/design_system/typography.dart';
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
          children: const [
            HeadlineLarge('Headline Large'),
            HeadlineMedium('Headline Medium'),
            HeadlineSmall('Headline Small'),
            Divider(),
            TitleLarge('Title Large'),
            TitleMedium('Title Medium'),
            TitleSmall('Title Small'),
            Divider(),
            LabelLarge('Label Large'),
            LabelMedium('Label Medium'),
            LabelSmall('Label Small'),
            Divider(),
            BodyLarge('Body Large'),
            BodyMedium('Body Medium'),
            BodySmall('Body Small'),
          ],
        ),
      ),
    );
  }
}
