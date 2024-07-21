import 'package:flutter/material.dart';
import 'package:imagegalery/code_kit/resources/app_colors.dart';
import 'package:imagegalery/code_kit/resources/app_text_styles.dart';

class AppInputDecorationTheme {
  static dynamic inputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 1,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: UiKitColors.gray,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xffbb3b3b3),
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
        color: Color(0xffbed3e3e),
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xffbed3e3e),
      ),
    ),
    errorStyle: AppTextStyles.caption.copyWith(
      color: const Color(0xffbed3e3e),
      fontSize: 12,
    ),
    contentPadding: const EdgeInsets.fromLTRB(9, 10, 9, 10),
  );
}
