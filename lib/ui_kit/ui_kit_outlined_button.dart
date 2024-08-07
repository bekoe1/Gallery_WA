part of 'module/ui_kit_widgets_module.dart';

class UiKitOutlinedButton extends StatelessWidget {
  const UiKitOutlinedButton({
    super.key,
    this.onPressed,
    this.isLoading = false,
    required this.text,
  });

  final VoidCallback? onPressed;
  final bool isLoading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: (isLoading && onPressed != null)
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
      onPressed: isLoading ? null : onPressed,
      child: isLoading
          ? SizedBox(
              height: 22,
              width: 22,
              child: AppIndicator.appIndicator(
                UiKitColors.black,
              ),
            )
          : Text(text),
    );
  }
}
