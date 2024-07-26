part of 'module/theme_module.dart';

class AppInputDecorationTheme {
  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 1,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: UiKitColors.gray,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: UiKitColors.gray,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: UiKitColors.grayLight,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: UiKitColors.errorRed,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: UiKitColors.errorRed,
      ),
    ),
    errorStyle: AppTextStyles.caption.copyWith(
      color: UiKitColors.errorRed,
      fontSize: 12,
    ),
    contentPadding: const EdgeInsets.fromLTRB(9, 10, 9, 10),
  );
}
