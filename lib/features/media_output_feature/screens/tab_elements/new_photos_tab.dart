part of '../../media_output_module.dart';

@RoutePage(name: "NewPhotosRoute")
class NewPhotosTab extends StatefulWidget {
  const NewPhotosTab({
    super.key,
    required this.shouldScrollToTop,
    required this.bloc,
    required this.controller,
  });
  final MediaOutputBloc bloc;
  final bool shouldScrollToTop;
  final TextEditingController controller;

  @override
  State<NewPhotosTab> createState() => _NewPhotosTabState();
}

class _NewPhotosTabState extends State<NewPhotosTab> with AutomaticKeepAliveClientMixin {
  final _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void didUpdateWidget(covariant NewPhotosTab oldWidget) {
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
    if (_scrollController.offset > _scrollController.position.maxScrollExtent) {
      if (widget.bloc.state.status != BlocStatesEnum.loading && !widget.bloc.state.reachedEnd) {
        widget.bloc.add(
          MediaOutputEvent.fetchData(
            popularImages: false,
            newImages: true,
            searchName: widget.controller.text,

            ///TODO searchQuery Changing
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
              widget.bloc.add(
                MediaOutputEvent.fetchData(
                  searchName: widget.bloc.state.search,
                  newImages: true,
                  popularImages: false,
                  isRefreshing: true,
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomScrollView(
                shrinkWrap: true,
                controller: _scrollController,
                slivers: <Widget>[
                  if (state.status == BlocStatesEnum.loaded || state.status == BlocStatesEnum.loading) ...[
                    ImagesListWidget(
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
                  ] else if (state.status == BlocStatesEnum.noImages && state.reachedEnd != true) ...[
                    const NoImagesWidget(),
                  ] else ...[
                    const SliverToBoxAdapter(
                      child: SizedBox.shrink(),
                    ),
                  ],
                ],
                physics: state.status != BlocStatesEnum.noImages
                    ? const BouncingScrollPhysics()
                    : const AlwaysScrollableScrollPhysics(),
              ),
            ),
          );
        }
      },
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
