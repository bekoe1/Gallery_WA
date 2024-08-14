part of "module/ui_kit_widgets_module.dart";

class UiKitBackButton extends StatelessWidget {
  const UiKitBackButton({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset(
            AppIcons.arrowLeftIcon,
            color: UiKitColors.blue,
          ),
          const SizedBox(width: 5),
          Text(
            S.of(context).back,
            style: AppTextStyles.h3.copyWith(
              color: UiKitColors.blue,
            ),
          )
        ],
      ),
    );
  }
}
