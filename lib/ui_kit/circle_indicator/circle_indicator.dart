import 'package:flutter/material.dart';

class CircleLoadingIndicator extends StatelessWidget {
  const CircleLoadingIndicator({
    super.key,
    this.color,
  });

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 22,
      height: 22,
      child: CircularProgressIndicator(
        strokeWidth: 1,
        color: color,
      ),
    );
  }
}
