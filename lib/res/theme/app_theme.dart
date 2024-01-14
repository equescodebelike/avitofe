import 'app_typography.dart';
import 'package:flutter/material.dart';

ThemeData appTheme({ColorScheme? colorScheme, bool isDark = false}) {
  return ThemeData(
    colorScheme: colorScheme,
    //colorSchemeSeed: Colors.purple,
    brightness: colorScheme != null
        ? null
        : isDark
            ? Brightness.dark
            : Brightness.light,
    useMaterial3: true,
    fontFamily: defaultFontFamily,
  );
}
