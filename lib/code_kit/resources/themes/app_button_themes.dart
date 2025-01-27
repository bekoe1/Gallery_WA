part of 'module/theme_module.dart';

class ButtonThemes {
  static final filledButtonTheme = FilledButtonThemeData(
    style: ButtonStyle(
      minimumSize: WidgetStateProperty.all(
        const Size(115, 40),
      ),
      foregroundColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return UiKitColors.gray;
          }
          return Colors.white;
        },
      ),
      backgroundColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.pressed)) {
            return UiKitColors.main;
          }
          if (states.contains(WidgetState.disabled)) {
            return UiKitColors.grayLight;
          }
          return UiKitColors.black;
        },
      ),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    ),
  );

  static final outlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      minimumSize: WidgetStateProperty.all(
        const Size(115, 40),
      ),
      backgroundColor: WidgetStateProperty.all(
        Colors.white,
      ),
      foregroundColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return UiKitColors.grayLight;
          }
          if (states.contains(WidgetState.pressed)) {
            return UiKitColors.main;
          }
          return Colors.black;
        },
      ),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      side: WidgetStateProperty.resolveWith<BorderSide>(
        (states) {
          if (states.contains(WidgetState.pressed)) {
            return const BorderSide(
              color: UiKitColors.main,
              width: 1,
            );
          }
          if (states.contains(WidgetState.disabled)) {
            return const BorderSide(
              color: UiKitColors.white,
              width: 1,
            );
          }
          return const BorderSide(
            color: Colors.black,
            width: 1,
          );
        },
      ),
    ),
  );

  static final textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      minimumSize: WidgetStateProperty.all(
        const Size(115, 40),
      ),
      backgroundColor: WidgetStateProperty.all(
        Colors.transparent,
      ),
      foregroundColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return UiKitColors.grayLight;
          }
          if (states.contains(WidgetState.pressed)) {
            return UiKitColors.main;
          }
          return Colors.black;
        },
      ),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    ),
  );

  static final floatingButtonTheme = FloatingActionButtonThemeData(
    disabledElevation: 0,
    focusElevation: 0,
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
}
