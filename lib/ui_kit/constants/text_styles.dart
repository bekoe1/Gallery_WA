import 'package:flutter/material.dart';

class UiKitTextStyle {
  static TextStyle _baseStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    textBaseline: TextBaseline.alphabetic,
  );

  static TextStyle h4MediumStyle({required Color color, double? fontSize}) {
    return _baseStyle.copyWith(color: color, fontSize: fontSize ?? 16);
  }
}
