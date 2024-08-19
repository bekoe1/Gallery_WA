part of 'module/ui_kit_widgets_module.dart';

SnackBar uikitSnackBar(BuildContext context, String? text) {
  return SnackBar(
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    backgroundColor: UiKitColors.gray,
    padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
    content: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: SvgPicture.asset(
            AppIcons.errorIcon,
            color: UiKitColors.white,
            height: 20,
            width: 20,
          ),
        ),
        Text(
          "$text",
          style: AppTextStyles.h3.copyWith(
            color: UiKitColors.white,
          ),
        ),
      ],
    ),
  );
}
