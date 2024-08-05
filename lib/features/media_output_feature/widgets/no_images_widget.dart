part of '../media_output_module.dart';

class NoImagesWidget extends StatelessWidget {
  const NoImagesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 197),
            child: Center(
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
                      context.localization.sorry,
                      style: AppTextStyles.p.copyWith(color: UiKitColors.gray),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "${context.localization.noPicture}\n${context.localization.comeBackLater}",
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
        },
        childCount: 1,
      ),
    );
  }
}
