part of 'module/theme_module.dart';

class AppTabBarTheme {
  static final tabBarTheme = TabBarTheme(
    indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(
        width: 2,
        color: UiKitColors.main,
      ),
    ),
    indicatorSize: TabBarIndicatorSize.tab,
    labelStyle: AppTextStyles.h3.copyWith(
      color: Colors.black,
    ),
    unselectedLabelStyle: AppTextStyles.h3.copyWith(
      color: Colors.grey,
    ),
  );
}
