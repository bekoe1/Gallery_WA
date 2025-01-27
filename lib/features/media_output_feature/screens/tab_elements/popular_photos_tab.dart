part of '../../media_output_module.dart';

@RoutePage(name: "PopularPhotosRoute")
class PopularPhotosTab extends StatefulWidget {
  const PopularPhotosTab({
    super.key,
    required this.shouldScrollToTop,
    required this.bloc,
    required this.focusNode,
    required this.searchController,
  });

  final MediaOutputBloc bloc;
  final bool shouldScrollToTop;
  final FocusNode focusNode;
  final TextEditingController searchController;
  @override
  State<PopularPhotosTab> createState() => _PopularPhotosTabState();
}

class _PopularPhotosTabState extends State<PopularPhotosTab> with AutomaticKeepAliveClientMixin {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void didUpdateWidget(covariant PopularPhotosTab oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_scrollController.hasClients && widget.shouldScrollToTop) {
      _scrollController.animateTo(
        0.0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.removeListener(_onScroll);
  }

  _onScroll() {
    if (_scrollController.offset == _scrollController.position.maxScrollExtent) {
      if (widget.bloc.state.status != BlocStatesEnum.loading && !widget.bloc.state.reachedEnd) {
        widget.bloc.add(
          MediaOutputEvent.fetchData(
            popularImages: true,
            searchName: widget.bloc.state.search,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<MediaOutputBloc, MediaOutputState>(
      bloc: widget.bloc
        ..add(
          MediaOutputEvent.fetchData(
            searchName: widget.searchController.text,
            popularImages: true,
            isRefreshing: true,
          ),
        ),
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
        if (state.firstFetch) {
          return const Center(
            child: UiKitLoader(),
          );
        } else {
          return RefreshIndicator(
            strokeWidth: AppConstants.indicatorWidth,
            color: UiKitColors.gray,
            onRefresh: () async {
              widget.focusNode.unfocus();
              widget.bloc.add(
                MediaOutputEvent.fetchData(
                  searchName: widget.bloc.state.search,
                  popularImages: true,
                  isRefreshing: true,
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomScrollView(
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                controller: _scrollController,
                slivers: <Widget>[
                  if ((state.status.isLoaded() || state.status.isLoading()) && state.images.isNotEmpty) ...[
                    ImagesListWidget(
                      token: state.token,
                      focusNode: widget.focusNode,
                      images: state.images,
                    ),
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
                  ] else if (state.images.isEmpty) ...[
                    const NoImagesWidget(),
                  ] else ...[
                    const SliverToBoxAdapter(
                      child: SizedBox.shrink(),
                    ),
                  ],
                ],
                physics: const AlwaysScrollableScrollPhysics(),
              ),
            ),
          );
        }
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
