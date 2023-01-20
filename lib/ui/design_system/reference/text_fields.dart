import 'package:carbon_flutter/ui/design_system/reference/reference_scaffold.dart';
import 'package:flutter/material.dart';

class DesignSystemTextFieldScreen extends StatefulWidget {
  const DesignSystemTextFieldScreen({super.key});

  @override
  State<DesignSystemTextFieldScreen> createState() => _DesignSystemTextFieldScreenState();
}

class _DesignSystemTextFieldScreenState extends State<DesignSystemTextFieldScreen> {
  @override
  Widget build(BuildContext context) {
    return DesignSystemReferenceScaffold(
      title: 'Text Fields',
      child: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Text (Outlined)',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Text (Outlined / Disabled)',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              minLines: 3,
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Multiline (Outlined)',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Text (Underlined)',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Text (Underlined / Disabled)',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              minLines: 3,
              maxLines: 3,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Multiline (Underlined)',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
