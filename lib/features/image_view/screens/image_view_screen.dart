part of '../image_view_module.dart';

@RoutePage()
class ImageViewScreen extends StatelessWidget {
  const ImageViewScreen({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageViewBloc(
        imageViewRepo: getIt<ImageViewRepo>(),
        tokenRepo: getIt<UserTokenRepo>(),
      )..add(
          ImageViewEvent.fetchData(
            id: id,
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
            // TODO: implement listener
          },
          builder: (context, state) {
            return AppRefreshIndicator.appRefreshIndicator(
              onRefresh: () async {
                context.read<ImageViewBloc>().add(
                      ImageViewEvent.fetchData(id: id),
                    );
              },
              child: SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height,
                  child: Column(
                    crossAxisAlignment:
                        (state.status.isLoaded()) ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                    children: [
                      if (state.status.isLoaded()) ...[
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 265,
                                right: 16,
                                bottom: 30,
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
                                                  ? "${DateFormat.yMMMd().format(
                                                      state.creatingDate ?? DateTime.now(),
                                                    )} "
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
                                  width: MediaQuery.sizeOf(context).width,
                                  constraints: BoxConstraints(
                                    maxHeight: MediaQuery.sizeOf(context).height / 3,
                                  ),
                                  child: PhotoView(
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
                                          width: MediaQuery.of(context).size.width,
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
