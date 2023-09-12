import 'package:flutter/material.dart';
import 'package:proschool/theme/colors.dart';

class ProschoolTheme {
  static ThemeData defaultTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: ProschoolColor.primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.transparent,
        backgroundColor: ProschoolColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        elevation: 0,
      ),
    ),
    useMaterial3: true,
  );
}
