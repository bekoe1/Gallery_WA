import 'package:flutter/material.dart';
import 'package:imagegalery/code_kit/resources/app_text_styles.dart';

class UiKitLoader extends StatelessWidget {
  const UiKitLoader({
    super.key,
    required this.indicatorColor,
  });
  final Color indicatorColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(
        minWidth: 70,
        minHeight: 72,
      ),
      child: Column(
        children: [
          CircularProgressIndicator(
            color: indicatorColor,
            strokeWidth: 2,
          ),
          const SizedBox(height: 10),
          Text(
            "Loading...",
            style: AppTextStyles.h4.copyWith(
              color: const Color(0xFFB3B3B3),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
