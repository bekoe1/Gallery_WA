import 'package:flutter/material.dart';
import 'package:imagegalery/ui_kit/constants/circle_indicator.dart';
import 'package:imagegalery/ui_kit/constants/const_colors.dart';
import 'package:imagegalery/ui_kit/constants/text_styles.dart';
import 'package:imagegalery/ui_kit/constants/ui_kit_button_types.dart';

class BaseUiKitButton extends StatefulWidget {
  const BaseUiKitButton({
    super.key,
    required this.type,
    this.onPressed,
    required this.isLoading,
    this.text,
    required this.child,
  });

  final ButtonType type;
  final bool isLoading;
  final String child;
  final String? text;
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
                backgroundColor: WidgetStateProperty.all(Colors.black),
                textStyle: WidgetStateProperty.resolveWith(
                  (states) {
                    if (states.contains(WidgetState.disabled)) {
                      return UiKitTextStyle.h4MediumStyle(
                          color: UiKitColors.gray);
                    } else {
                      return UiKitTextStyle.h4MediumStyle(
                          color: UiKitColors.white);
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
            UiKitTextStyle.h4MediumStyle(color: UiKitColors.gray);
          }
          if (states.contains(WidgetState.pressed)) {
            UiKitTextStyle.h4MediumStyle(color: UiKitColors.main);
          } else {
            UiKitTextStyle.h4MediumStyle(color: Colors.black);
          }
        },
      );
      return OutlinedButton(
        style: (widget.isLoading && widget.onPressed != null)
            ? ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  Colors.white,
                ),
                foregroundColor: WidgetStateProperty.all(
                  Colors.black,
                ),
                side: WidgetStateProperty.all(
                  const BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              )
            : null,
        onPressed: widget.isLoading ? null : widget.onPressed,
        child: widget.isLoading
            ? const CircleLoadingIndicator(
                color: Colors.black,
              )
            : Text(widget.child),
      );
    } else {
      return TextButton(
        style: (widget.isLoading && widget.onPressed != null)
            ? ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.white),
              )
            : null,
        onPressed: widget.isLoading ? null : widget.onPressed,
        child: widget.isLoading
            ? const CircleLoadingIndicator(
                color: Colors.black,
              )
            : Text(widget.child),
      );
    }
  }
}
