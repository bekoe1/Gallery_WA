part of '../add_image_module.dart';

class CheckboxWithText extends StatelessWidget {
  const CheckboxWithText({
    super.key,
    required this.value,
    required this.onTap,
    required this.text,
    required this.textStyle,
  });

  final bool value;
  final String text;
  final TextStyle textStyle;
  final void Function(bool?) onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///TODO
        Checkbox(
          value: value,
          onChanged: onTap,
        ),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}
