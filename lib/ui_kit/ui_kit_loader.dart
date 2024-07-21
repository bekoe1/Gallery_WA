part of 'module/ui_kit_widgets_module.dart';

class UiKitLoader extends StatelessWidget {
  const UiKitLoader({
    super.key,
    this.indicatorColor = UiKitColors.grayLight,
  });
  final Color indicatorColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(
        minWidth: 70,
        minHeight: 72,
      ),
      child: Column(
        children: [
          CircularProgressIndicator(
            color: indicatorColor,
            strokeWidth: 2,
          ),
          const SizedBox(height: 10),
          Text(
            "Loading...",
            style: AppTextStyles.h4.copyWith(
              color: UiKitColors.grayLight,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
