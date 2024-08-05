part of '../media_output_module.dart';

class GridImageElement extends StatelessWidget {
  const GridImageElement({super.key, required this.imageData});

  final ImageElementModel imageData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 164,
      width: 164,
      child: imageData.file != null
          ? FadeInImage.memoryNetwork(
              imageCacheHeight: 164,
              imageCacheWidth: 164,
              placeholder: kTransparentImage,
              image: "${AppConstants.baseUrl}/get_files/${imageData.file!.path}",
              imageErrorBuilder: (context, error, stackTrace) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: UiKitColors.grayLight,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      AppIcons.errorIcon,
                      height: 50,
                      width: 50,
                    ),
                  ),
                );
              },
            )
          : SizedBox(
              width: 40,
              height: 40,
              child: SvgPicture.asset(
                AppIcons.errorIcon,
                width: 30,
                height: 30,
              ),
            ),
    );
  }
}
