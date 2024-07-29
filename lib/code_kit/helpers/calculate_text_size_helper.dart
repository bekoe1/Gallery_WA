part of 'helpers_module.dart';

class CalculateTextSizeHelper {
  static double calculateTextSize({required String text, required TextStyle style}) {
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      textDirection: TextDirection.ltr,
      maxLines: 1,
    )..layout(minWidth: 0, maxWidth: double.infinity);

    return textPainter.width;
  }
}
