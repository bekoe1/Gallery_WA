part of 'module/ui_kit_widgets_module.dart';

class UiKitTextFormField extends StatefulWidget {
  const UiKitTextFormField({
    super.key,
    this.controller,
    this.hintText,
    this.isEnabled,
    this.errorText,
    this.icon,
    this.obscuringText,
    this.keyboardType,
    this.textInputAction,
    this.focusNode,
    this.onTap,
    this.readonly = false,
  });

  final String? hintText;
  final bool? isEnabled;
  final String? errorText;
  final VoidCallback? onTap;
  final TextEditingController? controller;
  final Widget? icon;
  final bool? obscuringText;
  final bool? readonly;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  @override
  State<UiKitTextFormField> createState() => _UiKitTextFormFieldState();
}

class _UiKitTextFormFieldState extends State<UiKitTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        textInputAction: widget.textInputAction,
        controller: widget.controller,
        onFieldSubmitted: (text) {},
        focusNode: widget.focusNode,
        cursorWidth: 1,
        readOnly: widget.readonly!,
        enabled: widget.isEnabled ?? true,
        onTap: widget.onTap,
        cursorColor: Colors.black,
        obscureText: widget.obscuringText ?? false,
        cursorErrorColor: UiKitColors.black,
        decoration: buildInputDecoration(),
        keyboardType: widget.keyboardType,
      ),
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
      suffixIconColor: widget.errorText != null ? hintAndIconColor : UiKitColors.grayLight,
      suffixIconConstraints: const BoxConstraints(
        minHeight: 22,
        minWidth: 22,
      ),
      isDense: true,
      suffixIcon: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: widget.errorText != null
            ? SvgPicture.asset(
                AppIcons.errorIcon,
                color: UiKitColors.errorRed,
              )
            : widget.icon,
      ),
      enabled: widget.isEnabled ?? true,
      errorText: widget.errorText,
    );
  }
}
