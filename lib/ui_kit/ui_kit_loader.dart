part of 'module/ui_kit_widgets_module.dart';

class UiKitLoader extends StatelessWidget {
  const UiKitLoader({
    super.key,
    this.indicatorColor = UiKitColors.gray,
  });

  final Color indicatorColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85,
      height: 90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppLoadingIndicator.appLoadingIndicator(indicatorColor),
          Text(
            context.localization.loading,
            style: AppTextStyles.h4.copyWith(
              color: UiKitColors.gray,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
