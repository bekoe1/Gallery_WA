import 'package:flutter/material.dart';
import 'package:imagegalery/ui_kit/constants/const_colors.dart';

class AddButton extends StatefulWidget {
  const AddButton({
    super.key,
    this.onPressed,
    required this.child,
    this.buttonWidth,
    this.buttonHeight,
  });

  final Widget child;
  final double? buttonWidth;
  final double? buttonHeight;
  final VoidCallback? onPressed;

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  double _elevation = 4;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _elevation = 0;
    });
  }

  void _onTapCancel() {
    setState(() {
      _elevation = 4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.buttonWidth ?? 64,
      height: widget.buttonHeight ?? 64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: GestureDetector(
        onTapDown: _onTapDown,
        onTapCancel: _onTapCancel,
        child: FloatingActionButton(
          elevation: widget.onPressed == null ? 0 : _elevation,
          onPressed: widget.onPressed,
          backgroundColor: widget.onPressed == null
              ? ConstColors.disabledFilledButtonColor
              : ConstColors.enabledFilledButtonColor,
          foregroundColor: widget.onPressed == null
              ? ConstColors.disabledButtonTextColor
              : Colors.white,
          splashColor: ConstColors.pressedFilledButtonColor,
          child: Center(
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
