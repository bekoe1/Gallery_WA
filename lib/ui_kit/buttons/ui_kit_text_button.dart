import 'package:flutter/material.dart';
import 'package:imagegalery/ui_kit/constants/circle_indicator.dart';
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
  final Widget child;
  final String? text;
  final VoidCallback? onPressed;

  @override
  State<BaseUiKitButton> createState() => _BaseUiKitButtonState();
}

class _BaseUiKitButtonState extends State<BaseUiKitButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (widget.type == ButtonType.filled) {
      return FilledButton(
        style: (widget.isLoading && widget.onPressed != null)
            ? ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.black),
              )
            : null,
        onPressed: widget.isLoading ? null : widget.onPressed,
        child: widget.isLoading
            ? const CircleLoadingIndicator(
                color: Colors.white,
              )
            : widget.child,
      );
    } else if (widget.type == ButtonType.outlined) {
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
            : widget.child,
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
            : widget.child,
      );
    }
  }
}
