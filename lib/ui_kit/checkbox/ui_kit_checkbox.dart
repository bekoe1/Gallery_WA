import 'package:flutter/cupertino.dart';

class UiKitCheckbox extends StatelessWidget {
  const UiKitCheckbox({
    super.key,
    required this.value,
    this.tristate,
    this.activeColor,
    this.inactiveColor,
    this.checkColor,
    this.focusColor,
    this.focusNode,
    this.side,
    this.shape,
    required this.onChanged,
  });

  final bool? value;
  final bool? tristate;
  final void Function(bool?)? onChanged;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? checkColor;
  final Color? focusColor;
  final FocusNode? focusNode;
  final bool autofocus = false;
  final BorderSide? side;
  final OutlinedBorder? shape;
  @override
  Widget build(BuildContext context) {
    return CupertinoCheckbox(
      key: key,
      value: value,
      tristate: tristate ?? false,
      onChanged: onChanged,
      activeColor: activeColor,
      inactiveColor: inactiveColor,
      checkColor: checkColor,
      focusColor: focusColor,
      focusNode: focusNode,
      autofocus: autofocus,
      shape: shape,
      side: side,
    );
  }
}
