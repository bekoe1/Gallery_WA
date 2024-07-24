part of 'module/theme_module.dart';

class AppMainThemes {
  static ThemeData standardTheme = ThemeData(
    fontFamily: 'Roboto',
    inputDecorationTheme: AppInputDecorationTheme.inputDecorationTheme,
    filledButtonTheme: ButtonThemes.filledButtonTheme,
    outlinedButtonTheme: ButtonThemes.outlinedButtonTheme,
    textButtonTheme: ButtonThemes.textButtonTheme,
    useMaterial3: true,
    floatingActionButtonTheme: ButtonThemes.floatingButtonTheme,
  );
}
