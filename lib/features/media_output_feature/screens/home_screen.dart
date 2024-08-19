part of '../media_output_module.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final MediaOutputBloc newImagesBloc = MediaOutputBloc(
    imageRepo: injection<ImageRepo>(),
    tokenRepo: injection<UserTokenRepo>(),
  );

  final MediaOutputBloc popularImagesBloc = MediaOutputBloc(
    imageRepo: injection<ImageRepo>(),
    tokenRepo: injection<UserTokenRepo>(),
  );

  int _scrollToTopPage = 0;
  final _searchController = TextEditingController();
  final _focusNode = FocusNode();
  Timer? _debounce;
  late TabController _tabController;

  void _onSearchChanged(String text) {
    final index = _tabController.index;
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(
      const Duration(milliseconds: 500),
      () {
        if (index == 0) {
          context.read<MediaOutputBloc>().add(
                MediaOutputEvent.fetchData(
                  isRefreshing: true,
                  popularImages: false,
                  searchName: text,
                ),
              );
        }
        if (index == 1) {
          context.read<MediaOutputBloc>().add(
                MediaOutputEvent.fetchData(
                  popularImages: true,
                  isRefreshing: true,
                  searchName: text,
                ),
              );
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _debounce!.cancel();
  }

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiKitSearchField(
          focusNode: _focusNode,
          onChanged: _onSearchChanged,
          controller: _searchController,
        ),
        bottom: TabBar(
          onTap: (index) {
            if (!_tabController.indexIsChanging) {
              setState(() {
                _scrollToTopPage = _tabController.index;
              });
            }
          },
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          tabs: [
            Tab(
              child: Text(
                AppConstants.newTab,
                style: AppTextStyles.h3,
              ),
            ),
            Tab(
              child: Text(
                AppConstants.popularTab,
                style: AppTextStyles.h3,
              ),
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          NewPhotosTab(
            focusNode: _focusNode,
            bloc: newImagesBloc,
            shouldScrollToTop: _scrollToTopPage == 0,
            searchController: _searchController,
          ),
          PopularPhotosTab(
            searchController: _searchController,
            focusNode: _focusNode,
            bloc: popularImagesBloc
              ..add(
                MediaOutputEvent.fetchData(
                  searchName: _searchController.text,
                  popularImages: true,
                  isRefreshing: true,
                ),
              ),
            shouldScrollToTop: _scrollToTopPage == 1,
          ),
        ],
      ),
    );
  }
}
