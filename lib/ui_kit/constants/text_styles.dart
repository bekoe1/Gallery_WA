import 'package:flutter/material.dart';

class ButtonTextStyle {
  static const TextStyle _baseStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    textBaseline: TextBaseline.alphabetic,
  );

  static TextStyle h4MediumStyle(Color color) {
    return _baseStyle.copyWith(color: color);
  }
}
