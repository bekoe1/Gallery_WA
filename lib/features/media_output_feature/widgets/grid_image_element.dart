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
  Uint8List? imageBlob;

  Future<void> _loadImage(ImageElementModel imageElement) async {
    try {
      final imageData = await getIt<Dio>().get(
        "${AppConstants.baseUrl}/get_file/${widget.imageData.file!.path}",
        options: Options(responseType: ResponseType.bytes),
      );
      if (mounted) {
        setState(() {
          imageBlob = (imageData.data);
        });
      }
      return;
    } catch (e) {
      setState(() {
        imageBlob = Uint8List(3);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _loadImage(widget.imageData);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 164,
      width: 164,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: imageBlob == null
            ? Shimmer.fromColors(
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
              )
            : Image.memory(
                imageBlob!,
                fit: BoxFit.fill,
                errorBuilder: (context, error, stackTrace) {
                  return Center(
                    child: SvgPicture.asset(
                      AppIcons.errorIcon,
                      height: 50,
                      width: 50,
                    ),
                  );
                },
              ),
      ),
    );
  }
}
