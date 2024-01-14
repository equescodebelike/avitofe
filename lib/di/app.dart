import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:test_project/generated/l10n.dart';
import 'package:test_project/res/theme/app_theme.dart';
import 'package:test_project/res/theme/color_schemes.g.dart';

import '../navigation/app_router.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ValueNotifier<ThemeMode>>();

    return MaterialApp.router(
      title: "Test app",
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: appTheme(colorScheme: lightColorScheme),
      highContrastTheme: appTheme(colorScheme: hightColorScheme),
      highContrastDarkTheme: appTheme(colorScheme: hightColorScheme),
      darkTheme: appTheme(colorScheme: darkColorScheme),
      themeMode: themeMode.value,
      routerConfig: _appRouter.config(),
    );
  }
}
