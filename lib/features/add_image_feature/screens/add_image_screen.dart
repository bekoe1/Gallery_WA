part of '../add_image_module.dart';

@RoutePage()
class AddImageScreen extends StatefulWidget {
  const AddImageScreen({super.key});

  @override
  State<AddImageScreen> createState() => _AddImageScreenState();
}

class _AddImageScreenState extends State<AddImageScreen> with AutomaticKeepAliveClientMixin {
  int? currentIndex;
  late Size _size;
  final _scrollController = ScrollController();

  _onScroll() {
    final bloc = context.read<AddImageBloc>();
    if (_scrollController.offset == _scrollController.position.maxScrollExtent) {
      if (bloc.state.status != BlocStatesEnum.loading && !bloc.state.reachedEnd) {
        bloc.add(
          const AddImageEvent.fetchData(
            isRefreshing: false,
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.removeListener(_onScroll);
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
      setState(() {
        _size = context.size!;
      });
    });
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.localization.allPhotos,
          style: AppTextStyles.h4.copyWith(
            fontSize: 17,
          ),
        ),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 11),
              child: Text(
                context.localization.nextPage,
                style: AppTextStyles.h4.copyWith(
                  fontSize: 17,
                  color: UiKitColors.main,
                ),
              ),
            ),
          ),
        ],
      ),
      body: BlocConsumer<AddImageBloc, AddImageState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Column(
            children: [
              Container(
                color: UiKitColors.grayLight,
                height: 375,
                width: _size.width,
                child: state.images.isNotEmpty && currentIndex != null
                    ? CachedNetworkImage(
                        imageUrl: "${AppConstants.baseUrl}/get_file/${state.images[currentIndex!].path}",
                        height: 250,
                        memCacheHeight: 250,
                        filterQuality: FilterQuality.high,
                        httpHeaders: {AppConstants.authorizationHeader: "Bearer ${state.token}"},
                        fit: BoxFit.fitWidth,
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
                          return ShimmerExtension.baseShimmer(
                            child: const SizedBox(
                              height: 164,
                              width: 164,
                            ),
                          );
                        },
                      )
                    : Container(),
              ),
              const Divider(
                height: 1,
                thickness: 1,
                color: UiKitColors.gray,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: Text(
                              context.localization.selectPhoto,
                              style: AppTextStyles.p,
                            ),
                          ),
                          Expanded(
                            child: RefreshIndicator(
                              strokeWidth: AppConstants.indicatorWidth,
                              color: UiKitColors.gray,
                              onRefresh: () async {
                                context.read<AddImageBloc>().add(
                                      const AddImageEvent.fetchData(
                                        isRefreshing: true,
                                      ),
                                    );
                              },
                              child: (state.firstFetch)
                                  ? const Center(
                                      child: UiKitLoader(),
                                    )
                                  : CustomScrollView(
                                      controller: _scrollController,
                                      slivers: <Widget>[
                                        if (state.status.isLoaded() ||
                                            state.status.isLoading() && state.images.isNotEmpty) ...[
                                          SliverGrid(
                                            delegate: SliverChildBuilderDelegate(
                                              (context, index) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      currentIndex = index;
                                                    });
                                                  },
                                                  child: Container(
                                                    color: UiKitColors.grayLight,
                                                    height: 82,
                                                    width: 82,
                                                    child: GridImage(
                                                      state: state,
                                                      index: index,
                                                    ),
                                                  ),
                                                );
                                              },
                                              childCount: state.images.length,
                                            ),
                                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 4,
                                              mainAxisSpacing: 5,
                                              crossAxisSpacing: 5,
                                            ),
                                          ),
                                        ] else if (state.images.isEmpty) ...[
                                          const NoImagesWidget(),
                                        ],
                                        SliverToBoxAdapter(
                                          child: !state.reachedEnd
                                              ? SizedBox(
                                                  height: 70,
                                                  child: Center(
                                                    child: AppLoadingIndicator.appLoadingIndicator(
                                                      UiKitColors.gray,
                                                    ),
                                                  ),
                                                )
                                              : const SizedBox.shrink(),
                                        )
                                      ],
                                      physics: state.images.isNotEmpty
                                          ? const BouncingScrollPhysics()
                                          : const AlwaysScrollableScrollPhysics(),
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 30,
                      bottom: 50,
                      child: AddButton(
                        onPressed: () async {
                          final picker = ImagePicker();
                          await picker.pickImage(source: ImageSource.gallery);
                        },
                        child: SvgPicture.asset(
                          AppIcons.plusIcon,
                          width: 24,
                          height: 24,
                          color: UiKitColors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
