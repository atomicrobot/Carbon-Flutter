import 'package:carbon_flutter/l10n/localizations.dart';
import 'package:flutter/material.dart';
import 'package:carbon_flutter/ui/widgets/app_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations.appTitle),
      ),
      drawer: const Drawer(
        child: AppDrawer(),
      ),
      body: Container(),
    );
  }
}
