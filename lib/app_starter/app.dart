import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../navigation/app_router.dart';
import '../theme/app_theme.dart';
import '../theme/color_schemes.g.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ValueNotifier<ThemeMode>>();

    return MaterialApp.router(
      theme: appTheme(),
      highContrastTheme: appTheme(colorScheme: hightColorScheme),
      highContrastDarkTheme: appTheme(colorScheme: hightColorScheme),
      darkTheme: appTheme(isDark: true),
      themeMode: themeMode.value,
      routerConfig: _appRouter.config(),
    );
  }
}
