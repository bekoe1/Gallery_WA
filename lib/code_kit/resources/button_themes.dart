import 'package:flutter/material.dart';
import 'package:imagegalery/ui_kit/constants/const_colors.dart';
import 'package:imagegalery/ui_kit/constants/sizes.dart';
import 'package:imagegalery/ui_kit/constants/text_styles.dart';

class ButtonThemes {
  static final filledButtonTheme = FilledButtonThemeData(
    style: ButtonStyle(
      minimumSize: WidgetStateProperty.all(
        ConstSizes.uiKitButtonSize,
      ),
      foregroundColor: WidgetStateProperty.all(
        Colors.white,
      ),
      backgroundColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.pressed)) {
            return ConstColors.pressedFilledButtonColor;
          }
          if (states.contains(WidgetState.disabled)) {
            return ConstColors.disabledFilledButtonColor;
          }
          return ConstColors.enabledFilledButtonColor;
        },
      ),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      textStyle: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return UiKitTextStyle.h4MediumStyle(
              color: ConstColors.disabledButtonTextColor,
            );
          }
          return UiKitTextStyle.h4MediumStyle(
            color: Colors.white,
          );
        },
      ),
    ),
  );

  static final outlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      minimumSize: WidgetStateProperty.all(
        ConstSizes.uiKitButtonSize,
      ),
      textStyle: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return UiKitTextStyle.h4MediumStyle(
              color: ConstColors.disabledButtonTextColor,
            );
          }
          if (states.contains(WidgetState.pressed)) {
            return UiKitTextStyle.h4MediumStyle(
              color: ConstColors.buttonPinkColor,
            );
          }
          return UiKitTextStyle.h4MediumStyle(
            color: Colors.black,
          );
        },
      ),
      backgroundColor: WidgetStateProperty.all(
        Colors.white,
      ),
      foregroundColor: WidgetStateProperty.all(
        Colors.black,
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
              color: ConstColors.buttonPinkColor,
              width: 1,
            );
          }
          if (states.contains(WidgetState.disabled)) {
            return const BorderSide(
              color: ConstColors.disabledOutlinedButtonColor,
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
        ConstSizes.uiKitButtonSize,
      ),
      backgroundColor: WidgetStateProperty.all(
        Colors.white,
      ),
      foregroundColor: WidgetStateProperty.all(
        Colors.black,
      ),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      textStyle: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return UiKitTextStyle.h4MediumStyle(
              color: ConstColors.disabledButtonTextColor,
            );
          }
          if (states.contains(WidgetState.pressed)) {
            return UiKitTextStyle.h4MediumStyle(
              color: ConstColors.buttonPinkColor,
            );
          }
          return UiKitTextStyle.h4MediumStyle(
            color: Colors.black,
          );
        },
      ),
    ),
  );
}
