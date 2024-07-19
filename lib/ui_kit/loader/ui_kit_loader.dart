import 'package:flutter/material.dart';
import 'package:imagegalery/ui_kit/constants/text_styles.dart';

class UiKitLoader extends StatelessWidget {
  const UiKitLoader({
    super.key,
    required this.withLoadingText,
    required this.indicatorColor,
  });
  final bool withLoadingText;
  final Color indicatorColor;

  @override
  Widget build(BuildContext context) {
    final _indicator = CircularProgressIndicator(
      color: indicatorColor,
      strokeWidth: 2,
    );
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        minWidth: withLoadingText ? 70 : 36.67,
        minHeight: withLoadingText ? 72 : 36.67,
      ),
      child: !withLoadingText
          ? _indicator
          : Column(
              children: [
                _indicator,
                SizedBox(height: 10),
                Text(
                  "Loading...",
                  style: UiKitTextStyle.h4MediumStyle(
                    color: Color(0xFFB3B3B3),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
    );
  }
}
