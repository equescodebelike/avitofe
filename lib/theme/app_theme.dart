import 'package:flutter/material.dart';

ThemeData appTheme({ColorScheme? colorScheme, bool isDark = false}) {
  return ThemeData(
      //colorScheme: colorScheme,
      //colorSchemeSeed: Colors.purple,
      brightness: isDark ? Brightness.dark : Brightness.light,
      useMaterial3: true,
      fontFamily: 'Roboto',
      appBarTheme: const AppBarTheme(centerTitle: true),
      cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      )));
}

const double paddingSize = 16;
