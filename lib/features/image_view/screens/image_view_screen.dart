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
            return RefreshIndicator(
              onRefresh: () async {
                context.read<ImageViewBloc>().add(
                      ImageViewEvent.fetchData(id: id),
                    );
              },
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment:
                      (state.status == BlocStatesEnum.loaded) ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                  children: [
                    if (state.status == BlocStatesEnum.loading) ...[
                      Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.width / 2),
                        child: const Center(
                          child: UiKitLoader(),
                        ),
                      )
                    ],
                    if (state.status == BlocStatesEnum.loaded) ...[
                      InteractiveViewer(
                        panEnabled: false,
                        minScale: 1.0,
                        maxScale: 2.5,
                        child: Image.network(
                          "${AppConstants.baseUrl}/get_file/${state.imageUrl}",
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                          headers: {AppConstants.authorizationHeader: "Bearer ${state.token}"},
                          loadingBuilder: (context, widget, loadingProgress) {
                            if (loadingProgress == null) return widget;
                            return Shimmer.fromColors(
                              baseColor: UiKitColors.gray,
                              highlightColor: UiKitColors.grayLight,
                              child: Container(
                                height: 250,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: Text(
                                "${state.imageName}",
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
                                      "${state.userName}",
                                      style: AppTextStyles.p.copyWith(color: UiKitColors.gray),
                                    ),
                                    Text(
                                      "${DateFormat.yMMMd().format(
                                        state.creatingDate ?? DateTime.now(),
                                      )} ",
                                      style: AppTextStyles.p.copyWith(color: UiKitColors.gray),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              "${state.description}",
                              style: AppTextStyles.p,
                            )
                          ],
                        ),
                      )
                    ] else if (state.status == BlocStatesEnum.loading)
                      ...[]
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
