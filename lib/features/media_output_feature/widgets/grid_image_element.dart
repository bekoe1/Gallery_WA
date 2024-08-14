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
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 4,
            color: UiKitColors.grayLight,
          )
        ],
      ),
      height: 164,
      width: 164,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              memCacheHeight: 164,
              memCacheWidth: 164,
              imageUrl: "${AppConstants.baseUrl}/get_file/${imageData.file!.path}",
              httpHeaders: {AppConstants.authorizationHeader: "Bearer $token"},
              fit: BoxFit.fill,
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
              },
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  context.router.push(
                    ImageViewRoute(
                      id: imageData.id!,
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
