import 'package:flutter/material.dart';
import 'package:test_project/di/app_dependency.dart';

import 'di/app.dart';
import 'di/app_components.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppComponents().init();
  runApp(AppDependency(app: App()));
  await AppComponents().dispose();
}
