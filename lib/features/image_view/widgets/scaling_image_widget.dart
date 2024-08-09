part of '../image_view_module.dart';

class ScalingImageWidget extends StatefulWidget {
  const ScalingImageWidget({
    super.key,
    required this.token,
    required this.imageUrl,
  });

  final String token;
  final String imageUrl;

  @override
  State<ScalingImageWidget> createState() => _ScalingImageWidgetState();
}

class _ScalingImageWidgetState extends State<ScalingImageWidget> with TickerProviderStateMixin {
  final _transformationController = TransformationController();

  void _onScaleEnd(ScaleEndDetails details) {
    setState(() {
      _transformationController.value = Matrix4.identity();
    });
  }

  ///TODO Animated scale
  @override
  Widget build(BuildContext context) {
    // return InteractiveViewer(
    //   transformationController: _transformationController,
    //   onInteractionEnd: _onScaleEnd,
    //   panEnabled: false,
    //   minScale: 1.0,
    //   maxScale: 2.5,
    //   child: Image.network(
    //     "${AppConstants.baseUrl}/get_file/${widget.imageUrl}",
    //     height: 250,
    //     width: MediaQuery.of(context).size.width,
    //     filterQuality: FilterQuality.high,
    //     fit: BoxFit.cover,
    //     headers: {AppConstants.authorizationHeader: "Bearer ${widget.token}"},
    //     loadingBuilder: (context, widget, loadingProgress) {
    //       if (loadingProgress == null) return widget;
    //       return Shimmer.fromColors(
    //         baseColor: UiKitColors.gray,
    //         highlightColor: UiKitColors.grayLight,
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
    return Center(
      child: UiKitFilledButton(
        text: "log",
        onPressed: () {
          ImageViewRepoImpl(
            imageViewDataProvider: ImageViewDataProvider(
              getIt<Dio>(),
            ),
          ).getImageById(id: 4);
        },
      ),
    );
  }
}
