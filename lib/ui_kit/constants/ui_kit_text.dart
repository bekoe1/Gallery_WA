import 'package:flutter/material.dart';

class UiKitText extends StatelessWidget {
  const UiKitText({
    super.key,
    this.text,
    required this.color,
    this.align,
  });

  final String? text;
  final Color? color;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    TextStyle baseTextStyle = const TextStyle(
      fontFamily: 'Roboto',
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      textBaseline: TextBaseline.alphabetic,
    );

    TextStyle newTextStyle = baseTextStyle.copyWith(
      color: color,
    );

    return Text(
      text ?? "",
      style: newTextStyle,
      textAlign: align,
    );
  }
}
