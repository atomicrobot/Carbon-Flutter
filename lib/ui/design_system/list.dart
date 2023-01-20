import 'package:carbon_flutter/ui/design_system/typography.dart';
import 'package:flutter/material.dart';

class ListHeader extends StatelessWidget {
  const ListHeader(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return HeadlineSmall(text);
  }
}
