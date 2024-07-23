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
      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset(
            AppIcons.arrowLeftIcon,
            color: UiKitColors.blue,
          ),
          const SizedBox(width: 5),
          Text(
            "Cancel",
            style: AppTextStyles.h3.copyWith(
              color: UiKitColors.blue,
            ),
          )
        ],
      ),
    );
  }
}
