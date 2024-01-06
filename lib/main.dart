import 'package:em_mobui/app_starter/app_dependency.dart';
import 'package:flutter/material.dart';

import 'app_starter/app.dart';
import 'app_starter/app_components.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppComponents().init();

  runApp(
    AppDependency(
      app: App(),
    ),
  );
}
