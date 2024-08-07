part of '../../media_output_module.dart';

@RoutePage(name: "PopularPhotosRoute")
class PopularPhotosTab extends StatefulWidget {
  const PopularPhotosTab({
    super.key,
    required this.shouldScrollToTop,
    required this.bloc,
    required this.focusNode,
  });

  final MediaOutputBloc bloc;
  final bool shouldScrollToTop;
  final FocusNode focusNode;

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
    if (_scrollController.hasClients && _scrollController.hasClients) {
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
            newImages: false,
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
      bloc: widget.bloc,
      listener: (context, state) {
        if (state == BlocStatesEnum.requestError) {
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
            onRefresh: () async {
              widget.focusNode.unfocus();
              widget.bloc.add(
                MediaOutputEvent.fetchData(
                  searchName: widget.bloc.state.search,
                  newImages: false,
                  popularImages: true,
                  isRefreshing: true,
                ),
              );
            },
            child: CustomScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              shrinkWrap: true,
              controller: _scrollController,
              slivers: <Widget>[
                if ((state.status == BlocStatesEnum.loaded || state.status == BlocStatesEnum.loading) &&
                    state.images.isNotEmpty) ...[
                  ImagesListWidget(
                    token: state.token,
                    focusNode: widget.focusNode,
                    images: state.images,
                  ),
                  SliverToBoxAdapter(
                    child: !state.reachedEnd
                        ? const SizedBox(
                            height: 70,
                            child: Center(
                              child: UiKitCircleLoadingIndicator(
                                color: UiKitColors.gray,
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
              physics: state.images.isNotEmpty ? const BouncingScrollPhysics() : const AlwaysScrollableScrollPhysics(),
            ),
          );
        }
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
