part of '../media_output_module.dart';

class NoImagesWidget extends StatelessWidget {
  const NoImagesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pStyleSorryText = context.localization.sorry;
    final captionStyleSorryText = "${context.localization.noPicture}\n${context.localization.comeBackLater}";

    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(top: context.mediaQuery.size.height / 4),
        child: SizedBox(
          height: 160,
          width: 127,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppIcons.noImageLogo,
                height: 78,
                width: 74,
                color: Colors.grey,
              ),
              Text(
                pStyleSorryText,
                style: AppTextStyles.p.copyWith(color: UiKitColors.gray),
                textAlign: TextAlign.center,
              ),
              Text(
                captionStyleSorryText,
                style: AppTextStyles.caption.copyWith(
                  color: UiKitColors.gray,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
