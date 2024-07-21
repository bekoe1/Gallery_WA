import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imagegalery/code_kit/resources/app_colors.dart';
import 'package:imagegalery/code_kit/resources/app_icons.dart';
import 'package:imagegalery/code_kit/resources/app_text_styles.dart';

class UiKitTextFormField extends StatefulWidget {
  const UiKitTextFormField({
    super.key,
    required this.controller,
    this.hintText,
    this.isEnabled,
    this.errorText,
  });

  final String? hintText;
  final bool? isEnabled;
  final String? errorText;
  final TextEditingController controller;

  @override
  State<UiKitTextFormField> createState() => _UiKitTextFormFieldState();
}

class _UiKitTextFormFieldState extends State<UiKitTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onFieldSubmitted: (text) {},
      cursorWidth: 1,
      enabled: widget.isEnabled ?? true,
      cursorColor: Colors.black,
      cursorErrorColor: const Color(0xffbed3e3e),
      decoration: buildInputDecoration(),
    );
  }

  InputDecoration buildInputDecoration() {
    Color hintAndIconColor = UiKitColors.gray;

    if (widget.isEnabled == false) {
      hintAndIconColor = UiKitColors.grayLight;
    } else if (widget.isEnabled == true) {
      hintAndIconColor = UiKitColors.gray;
    }

    return InputDecoration(
      hintStyle: AppTextStyles.h4.copyWith(color: hintAndIconColor),
      hintText: widget.hintText,
      suffixIconColor: widget.errorText != null
          ? hintAndIconColor
          : const Color(0xffbed3e3e),
      suffixIconConstraints: const BoxConstraints(
        minHeight: 22,
        minWidth: 22,
      ),
      isDense: true,
      suffixIcon: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: SvgPicture.asset(widget.errorText != null
            ? AppIcons.errorIcon
            : AppIcons.personIcon),
      ),
      enabled: widget.isEnabled ?? true,
      errorText: widget.errorText,
    );
  }
}
