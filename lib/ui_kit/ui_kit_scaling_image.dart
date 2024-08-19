part of 'module/ui_kit_widgets_module.dart';

class UiKitScalingImage extends StatelessWidget {
  UiKitScalingImage({
    super.key,
    required this.imageUrl,
    required this.token,
    required this.maxScale,
  });

  final String imageUrl;
  final String token;
  final PhotoViewController controller = PhotoViewController();
  final PhotoViewComputedScale maxScale;

  @override
  Widget build(BuildContext context) {
    return PhotoView(
      initialScale: 0.0,
      controller: controller,
      onScaleEnd: (
        BuildContext context,
        ScaleEndDetails details,
        PhotoViewControllerValue controllerValue,
      ) {
        controller.reset();
      },
      basePosition: Alignment.center,
      minScale: PhotoViewComputedScale.contained,
      maxScale: maxScale,
      backgroundDecoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      filterQuality: FilterQuality.high,
      tightMode: false,
      imageProvider: NetworkImage(
        "${AppConstants.baseUrl}/get_file/$imageUrl",
        headers: {AppConstants.authorizationHeader: "Bearer $token"},
      ),
      loadingBuilder: (context, loadingProgress) {
        return ShimmerExtension.baseShimmer(
          child: Container(
            width: context.mediaQuery.size.width,
            color: UiKitColors.white,
          ),
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return Center(
          child: SvgPicture.asset(
            AppIcons.errorIcon,
            height: 50,
            width: 50,
          ),
        );
      },
    );
  }
}
