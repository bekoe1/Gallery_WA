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
    this.inputFormatters,
    this.additionalHint,
    this.dateSelected = false,
    this.maxLines,
    this.onSaved,
  });

  final String? hintText;
  final Text? additionalHint;
  final bool? isEnabled;
  final String? errorText;
  final VoidCallback? onTap;
  final TextEditingController? controller;
  final Widget? icon;
  final bool? obscuringText;
  final List<TextInputFormatter>? inputFormatters;
  final bool? readonly;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final bool? dateSelected;
  final int? maxLines;
  final void Function(String?)? onSaved;
  @override
  State<UiKitTextFormField> createState() => _UiKitTextFormFieldState();
}

class _UiKitTextFormFieldState extends State<UiKitTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Stack(children: [
        TextFormField(
          maxLines: widget.maxLines ?? 1,
          inputFormatters: widget.inputFormatters,
          textInputAction: widget.textInputAction,
          controller: widget.controller,
          focusNode: widget.focusNode,
          cursorWidth: 1,
          readOnly: widget.readonly!,
          enabled: widget.isEnabled ?? true,
          onTap: widget.onTap,
          onChanged: (t) {
            setState(() {});
          },
          onSaved: widget.onSaved,
          cursorColor: Colors.black,
          obscureText: widget.obscuringText ?? false,
          cursorErrorColor: UiKitColors.black,
          decoration: buildInputDecoration(),
          keyboardType: widget.keyboardType,
        ),
        if (widget.additionalHint != null) ...[
          Positioned(
            left: CalculateTextSizeHelper.calculateTextSize(
                  text: widget.hintText ?? AppConstants.empty,
                  style: AppTextStyles.h4,
                ) +
                15,
            top: 9,
            child: widget.controller!.text.isEmpty && !widget.dateSelected!
                ? widget.additionalHint!
                : const SizedBox.shrink(),
          ),
        ]
      ]),
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
      alignLabelWithHint: true,
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
