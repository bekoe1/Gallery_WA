part of '../image_view_module.dart';

@RoutePage()
class ImageViewScreen extends StatefulWidget {
  const ImageViewScreen({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<ImageViewScreen> createState() => _ImageViewScreenState();
}

class _ImageViewScreenState extends State<ImageViewScreen> {
  final _photoViewController = PhotoViewController();
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    _photoViewController.reset();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.removeListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageViewBloc(
        imageViewRepo: injection<ImageViewRepo>(),
        tokenRepo: injection<UserTokenRepo>(),
      )..add(
          ImageViewEvent.fetchData(
            id: widget.id,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 150,
          surfaceTintColor: UiKitColors.white,
          leading: Padding(
            padding: const EdgeInsets.only(left: 9),
            child: UiKitBackButton(
              onTap: () {
                context.router.maybePop();
              },
            ),
          ),
        ),
        body: BlocConsumer<ImageViewBloc, ImageViewState>(
          listener: (context, state) {
            if (state.status.hasRequestError()) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.requestError ?? context.localization.someError,
                  ),
                ),
              );
            }
          },
          builder: (context, state) {
            return RefreshIndicator(
              strokeWidth: AppConstants.indicatorWidth,
              color: UiKitColors.gray,
              onRefresh: () async {
                context.read<ImageViewBloc>().add(
                      ImageViewEvent.fetchData(id: widget.id),
                    );
              },
              child: SingleChildScrollView(
                controller: _scrollController,
                padding: const EdgeInsets.only(bottom: 30),
                child: SizedBox(
                  height: context.size?.height,
                  child: Column(
                    crossAxisAlignment:
                        (state.status.isLoaded()) ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                    children: [
                      if (state.status.isLoaded() || state.status.isLoading()) ...[
                        SizedBox(
                          height: context.size?.height,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 265,
                                right: 16,
                                left: 16,
                                child: Skeletonizer(
                                  enabled: state.status.isLoading(),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 4),
                                        child: Text(
                                          state.status.isLoaded() ? "${state.imageName}" : BoneMock.name,
                                          style: AppTextStyles.h2.copyWith(),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 22,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              state.status.isLoaded() ? "${state.userName}" : BoneMock.name,
                                              style: AppTextStyles.p.copyWith(color: UiKitColors.gray),
                                            ),
                                            Text(
                                              state.status.isLoaded()
                                                  ? state.creatingDate!.toFormattedString()
                                                  : BoneMock.date,
                                              style: AppTextStyles.p.copyWith(color: UiKitColors.gray),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text(
                                        state.status.isLoaded() ? "${state.description}" : BoneMock.longParagraph,
                                        style: AppTextStyles.p,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                child: Container(
                                  height: 250,
                                  width: context.size!.width,
                                  constraints: BoxConstraints(
                                    maxHeight: context.size!.height / 3,
                                  ),
                                  child: state.status.isLoaded()
                                      ? PhotoView(
                                          initialScale: 0.0,
                                          controller: _photoViewController,
                                          onScaleEnd: (
                                            BuildContext context,
                                            ScaleEndDetails details,
                                            PhotoViewControllerValue controllerValue,
                                          ) {
                                            _photoViewController.reset();
                                          },
                                          basePosition: Alignment.center,
                                          minScale: PhotoViewComputedScale.contained,
                                          maxScale: PhotoViewComputedScale.covered * 2,
                                          backgroundDecoration: const BoxDecoration(
                                            color: Colors.transparent,
                                          ),
                                          imageProvider: NetworkImage(
                                            "${AppConstants.baseUrl}/get_file/${state.imageUrl}",
                                            headers: {AppConstants.authorizationHeader: "Bearer ${state.token}"},
                                          ),
                                          loadingBuilder: (context, loadingProgress) {
                                            return ShimmerExtension.baseShimmer(
                                              child: Container(
                                                width: context.size?.width,
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
                                        )
                                      : ShimmerExtension.baseShimmer(
                                          child: Container(
                                            color: UiKitColors.white,
                                          ),
                                        ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
