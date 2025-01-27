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
      style: (onPressed != null)
          ? ButtonStyle(
              backgroundColor: isLoading ? const WidgetStatePropertyAll(UiKitColors.black) : null,
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
          ? SizedBox(
              height: 22,
              width: 22,
              child: AppLoadingIndicator.appLoadingIndicator(
                UiKitColors.white,
              ),
            )
          : Text(
              text,
              maxLines: 1,
            ),
    );
  }
}
