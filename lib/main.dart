import 'package:carbon_flutter/domain/app/build_flavor.dart';
import 'package:carbon_flutter/launch_app.dart';

void main() => launchApp(BuildFlavor.valueOf(const String.fromEnvironment('FLAVOR')));
