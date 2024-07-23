part of 'module/ui_kit_widgets_module.dart';

class UiKitFilledButton extends StatelessWidget {
  const UiKitFilledButton({
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
    return FilledButton(
      style: (isLoading && onPressed != null)
          ? ButtonStyle(
              backgroundColor: WidgetStateProperty.all(UiKitColors.black),
              textStyle: WidgetStateProperty.resolveWith(
                (states) {
                  if (states.contains(WidgetState.disabled)) {
                    return AppTextStyles.h4.copyWith(
                      color: UiKitColors.gray,
                    );
                  } else {
                    return AppTextStyles.h4.copyWith(
                      color: UiKitColors.white,
                    );
                  }
                },
              ),
            )
          : null,
      onPressed: isLoading ? null : onPressed,
      child: isLoading
          ? const UiKitCircleLoadingIndicator(
              color: Colors.white,
            )
          : Text(text),
    );
  }
}
