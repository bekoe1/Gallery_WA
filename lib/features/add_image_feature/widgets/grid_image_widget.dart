part of '../add_image_module.dart';

class GridImage extends StatelessWidget {
  const GridImage({
    super.key,
    required this.state,
    required this.index,
  });

  final AddImageState state;
  final int index;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      httpHeaders: {AppConstants.authorizationHeader: "Bearer ${state.token}"},
      fit: BoxFit.fill,
      imageUrl: "${AppConstants.baseUrl}/get_file/${state.images[index].path}",
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
          child: const SizedBox(
            height: 164,
            width: 164,
          ),
        );
      },
    );
  }
}
