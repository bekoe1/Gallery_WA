part of '../media_output_module.dart';

class GridImageElement extends StatefulWidget {
  const GridImageElement({
    super.key,
    required this.imageData,
  });

  final ImageElementModel imageData;

  @override
  State<GridImageElement> createState() => _GridImageElementState();
}

class _GridImageElementState extends State<GridImageElement> {
  bool _loading = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loadImage(widget.imageData);
  }

  void _loadImage(ImageElementModel image) async {
    try {
      await precacheImage(
        NetworkImage(
          "${AppConstants.baseUrl}/get_files/${image.file!.path}",
        ),
        context,
      );
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 164,
      width: 164,
      child: _loading
          ? Shimmer.fromColors(
              baseColor: UiKitColors.white,
              highlightColor: UiKitColors.grayLight,
              child: Container(
                height: 164,
                color: UiKitColors.white,
                width: 164,
              ),
            )
          : FadeInImage.memoryNetwork(
              imageCacheHeight: 164,
              imageCacheWidth: 164,
              placeholder: kTransparentImage,
              image: "${AppConstants.baseUrl}/get_files/${widget.imageData.file!.path}",
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
            ),
    );
  }
}
