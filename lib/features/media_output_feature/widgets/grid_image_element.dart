part of '../media_output_module.dart';

class GridImageElement extends StatelessWidget {
  const GridImageElement({
    super.key,
    required this.imageData,
    required this.token,
  });

  final String token;
  final ImageElementModel imageData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 164,
      width: 164,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network("${AppConstants.baseUrl}/get_file/${imageData.file!.path}",
            fit: BoxFit.fill,
            headers: {AppConstants.authorizationHeader: "Bearer $token"}, errorBuilder: (context, error, stackTrace) {
          return Center(
            child: SvgPicture.asset(
              AppIcons.errorIcon,
              height: 50,
              width: 50,
            ),
          );
        }, loadingBuilder: (context, widget, loadingProgress) {
          if (loadingProgress == null) return widget;
          return Shimmer.fromColors(
            baseColor: UiKitColors.gray,
            highlightColor: UiKitColors.grayLight,
            child: Container(
              height: 164,
              width: 164,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: UiKitColors.white,
              ),
            ),
          );
        }),
      ),
    );
  }
}
