part of 'module/ui_kit_widgets_module.dart';

class UiKitTextButton extends StatelessWidget {
  const UiKitTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
  });
  final VoidCallback? onPressed;
  final bool isLoading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: (isLoading && onPressed != null)
          ? ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                UiKitColors.white,
              ),
            )
          : null,
      onPressed: isLoading ? null : onPressed,
      child: isLoading
          ? const UiKitCircleLoadingIndicator(
              color: UiKitColors.black,
            )
          : Text(text),
    );
  }
}
