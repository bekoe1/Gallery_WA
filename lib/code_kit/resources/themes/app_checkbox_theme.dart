part of 'module/theme_module.dart';

class AppCheckboxTheme {
  static final appCheckboxTheme = CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return UiKitColors.white;
      }
      if (states.contains(WidgetState.selected)) {
        return UiKitColors.main;
      }
    }),
    checkColor: WidgetStateProperty.all(UiKitColors.white),
    side: const BorderSide(
      color: UiKitColors.gray,
      width: 1.5,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(3),
    ),
  );
}
