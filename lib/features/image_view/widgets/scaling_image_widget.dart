part of '../image_view_module.dart';

class ScalingImageWidget extends StatelessWidget {
  const ScalingImageWidget({
    super.key,
    required this.imageUrl,
    required this.token,
  });

  final String? imageUrl;
  final String? token;

  @override
  Widget build(BuildContext context) {
    // return InteractiveViewer(
    //   boundaryMargin: EdgeInsets.symmetric(
    //     vertical: MediaQuery.sizeOf(context).height,
    //     horizontal: MediaQuery.sizeOf(context).width,
    //   ),
    //   panEnabled: false,
    //   minScale: 1.0,
    //   maxScale: 2.5,
    //   child: Image.network(
    //     "${AppConstants.baseUrl}/get_file/$imageUrl",
    //     height: 250,
    //     width: MediaQuery.of(context).size.width,
    //     filterQuality: FilterQuality.high,
    //     fit: BoxFit.cover,
    //     headers: {AppConstants.authorizationHeader: "Bearer $token"},
    //     loadingBuilder: (context, widget, loadingProgress) {
    //       if (loadingProgress == null) return widget;
    //       return ShimmerExtension.baseShimmer(
    //         child: Container(
    //           height: 250,
    //           width: MediaQuery.of(context).size.width,
    //           color: UiKitColors.white,
    //         ),
    //       );
    //     },
    //     errorBuilder: (context, error, stackTrace) {
    //       return Center(
    //         child: SvgPicture.asset(
    //           AppIcons.errorIcon,
    //           height: 50,
    //           width: 50,
    //         ),
    //       );
    //     },
    //   ),
    // );
    return InteractiveViewer(
      boundaryMargin: EdgeInsets.symmetric(
        vertical: MediaQuery.sizeOf(context).height,
        horizontal: MediaQuery.sizeOf(context).width,
      ),
      panEnabled: false,
      minScale: 1.0,
      maxScale: 2.5,
      child: CachedNetworkImage(
        height: 250,
        fit: BoxFit.fill,
        width: MediaQuery.of(context).size.width,
        filterQuality: FilterQuality.high,
        imageUrl: "${AppConstants.baseUrl}/get_file/$imageUrl",
        errorWidget: (context, error, stackTrace) {
          return Center(
            child: SvgPicture.asset(
              AppIcons.errorIcon,
              height: 50,
              width: 50,
            ),
          );
        },
        progressIndicatorBuilder: (context, widget, loadingProgress) {
          return ShimmerExtension.baseShimmer(
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              color: UiKitColors.white,
            ),
          );
        },
      ),
    );
  }
}
