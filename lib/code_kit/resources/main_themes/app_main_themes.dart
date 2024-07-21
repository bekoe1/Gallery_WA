import 'package:flutter/material.dart';
import 'package:imagegalery/code_kit/resources/app_button_themes.dart';
import 'package:imagegalery/code_kit/resources/app_input_decoration_theme.dart';

class AppMainThemes {
  static ThemeData standardTheme = ThemeData(
    fontFamily: 'Roboto',
    inputDecorationTheme: AppInputDecorationTheme.inputDecorationTheme,
    filledButtonTheme: ButtonThemes.filledButtonTheme,
    outlinedButtonTheme: ButtonThemes.outlinedButtonTheme,
    textButtonTheme: ButtonThemes.textButtonTheme,
    useMaterial3: true,
  );
}
