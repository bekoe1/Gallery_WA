part of 'module/theme_module.dart';

class AppMainThemes {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Roboto',
    inputDecorationTheme: AppInputDecorationTheme.inputDecorationTheme,
    filledButtonTheme: ButtonThemes.filledButtonTheme,
    outlinedButtonTheme: ButtonThemes.outlinedButtonTheme,
    textButtonTheme: ButtonThemes.textButtonTheme,
    useMaterial3: true,
    tabBarTheme: AppTabBarTheme.tabBarTheme,
    floatingActionButtonTheme: ButtonThemes.floatingButtonTheme,
    bottomNavigationBarTheme: AppBottomNavBarTheme.bottomNavBarTheme,
  );
}
