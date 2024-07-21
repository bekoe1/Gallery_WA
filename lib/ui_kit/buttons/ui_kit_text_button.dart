import 'package:flutter/material.dart';
import 'package:imagegalery/code_kit/resources/app_colors.dart';
import 'package:imagegalery/code_kit/resources/app_text_styles.dart';
import 'package:imagegalery/code_kit/resources/enums.dart';
import 'package:imagegalery/ui_kit/circle_indicator/circle_indicator.dart';

class BaseUiKitButton extends StatefulWidget {
  const BaseUiKitButton({
    super.key,
    required this.type,
    this.onPressed,
    required this.isLoading,
    required this.child,
  });

  final ButtonType type;
  final bool isLoading;
  final String child;
  final VoidCallback? onPressed;

  @override
  State<BaseUiKitButton> createState() => _BaseUiKitButtonState();
}

class _BaseUiKitButtonState extends State<BaseUiKitButton> {
  @override
  Widget build(BuildContext context) {
    if (widget.type == ButtonType.filled) {
      return FilledButton(
        style: (widget.isLoading && widget.onPressed != null)
            ? ButtonStyle(
                backgroundColor: WidgetStateProperty.all(UiKitColors.black),
                textStyle: WidgetStateProperty.resolveWith(
                  (states) {
                    if (states.contains(WidgetState.disabled)) {
                      return AppTextStyles.h4.copyWith(
                        color: UiKitColors.gray,
                      );
                    } else {
                      return AppTextStyles.h4.copyWith(
                        color: UiKitColors.white,
                      );
                    }
                  },
                ),
              )
            : null,
        onPressed: widget.isLoading ? null : widget.onPressed,
        child: widget.isLoading
            ? const CircleLoadingIndicator(
                color: Colors.white,
              )
            : Text(
                widget.child,
              ),
      );
    } else if (widget.type == ButtonType.outlined) {
      WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            AppTextStyles.h4.copyWith(
              color: UiKitColors.gray,
            );
          }
          if (states.contains(WidgetState.pressed)) {
            AppTextStyles.h4.copyWith(
              color: UiKitColors.main,
            );
          } else {
            AppTextStyles.h4.copyWith(
              color: UiKitColors.black,
            );
          }
        },
      );
      return OutlinedButton(
        style: (widget.isLoading && widget.onPressed != null)
            ? ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  UiKitColors.white,
                ),
                foregroundColor: WidgetStateProperty.all(
                  UiKitColors.black,
                ),
                side: WidgetStateProperty.all(
                  const BorderSide(
                    color: UiKitColors.black,
                    width: 1,
                  ),
                ),
              )
            : null,
        onPressed: widget.isLoading ? null : widget.onPressed,
        child: widget.isLoading
            ? const CircleLoadingIndicator(
                color: UiKitColors.black,
              )
            : Text(widget.child),
      );
    } else {
      return TextButton(
        style: (widget.isLoading && widget.onPressed != null)
            ? ButtonStyle(
                backgroundColor: WidgetStateProperty.all(UiKitColors.white),
              )
            : null,
        onPressed: widget.isLoading ? null : widget.onPressed,
        child: widget.isLoading
            ? const CircleLoadingIndicator(
                color: UiKitColors.black,
              )
            : Text(widget.child),
      );
    }
  }
}
