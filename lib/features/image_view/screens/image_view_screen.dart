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
                child: Column(
                  crossAxisAlignment: (state.status.isLoaded()) ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                  children: [
                    if (state.status.isLoaded() || state.status.isLoading()) ...[
                      state.status.isLoaded()
                          ? ScalingImageWidget(
                              imageUrl: state.imageUrl,
                              token: state.token,
                            )
                          : ShimmerExtension.baseShimmer(
                              child: Container(
                                height: 250,
                                width: MediaQuery.of(context).size.width,
                                color: UiKitColors.white,
                              ),
                            ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
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
                              Padding(
                                padding: const EdgeInsets.only(bottom: 14),
                                child: SizedBox(
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
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: Text(
                                  state.status.isLoaded() ? "${state.description}" : BoneMock.longParagraph,
                                  style: AppTextStyles.p,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ]
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
