part of '../media_output_module.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final _searchController = TextEditingController();

  final focusNode = FocusNode();

  int _scrollToTopPage = 0;

  final MediaOutputBloc newImagesBloc = MediaOutputBloc(
    getIt<ImageRepo>(),
  );
  final MediaOutputBloc popularImagesBloc = MediaOutputBloc(
    getIt<ImageRepo>(),
  );

  Timer? _debounce;

  void _onSearchChanged(String text) {
    final index = _tabController.index;
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(
      const Duration(milliseconds: 500),
      () {
        if (index == 0) {
          newImagesBloc.add(
            MediaOutputEvent.fetchData(
              isRefreshing: true,
              popularImages: false,
              newImages: true,
              searchName: text,
            ),
          );
        }
        if (index == 1) {
          popularImagesBloc.add(
            MediaOutputEvent.fetchData(
              popularImages: true,
              isRefreshing: true,
              newImages: false,
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
    return AutoTabsRouter.tabBar(
      routes: [
        ///TODO FIX after adding real routes
        NewPhotosRoute(
          focusNode: focusNode,
          shouldScrollToTop: false,
          bloc: newImagesBloc,
        ),
        PopularPhotosRoute(
          focusNode: focusNode,
          shouldScrollToTop: false,
          bloc: popularImagesBloc,
        ),
      ],
      builder: (context, child, tabsRouter) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            title: UiKitSearchField(
              focusNode: focusNode,
              onChanged: _onSearchChanged,
              controller: _searchController,
            ),
            bottom: TabBar(
              onTap: (index) {
                if (!_tabController.indexIsChanging) {
                  setState(() {
                    _scrollToTopPage = index;
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
                focusNode: focusNode,
                bloc: newImagesBloc
                  ..add(
                    MediaOutputEvent.fetchData(
                      searchName: _searchController.text,
                      popularImages: false,
                      newImages: true,
                      isRefreshing: false,
                    ),
                  ),
                shouldScrollToTop: _scrollToTopPage == 0,
              ),
              PopularPhotosTab(
                focusNode: focusNode,
                bloc: popularImagesBloc
                  ..add(
                    MediaOutputEvent.fetchData(
                      searchName: _searchController.text,
                      popularImages: true,
                      newImages: false,
                      isRefreshing: false,
                    ),
                  ),
                shouldScrollToTop: _scrollToTopPage == 1,
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            currentIndex: tabsRouter.activeIndex,
            items: [
              BottomNavigationBarItem(
                label: AppConstants.empty,
                icon: SvgPicture.asset(
                  AppIcons.homeIcon,
                  color: tabsRouter.activeIndex == 0 ? UiKitColors.main : UiKitColors.gray,
                ),
              ),
              BottomNavigationBarItem(
                label: AppConstants.empty,
                icon: SvgPicture.asset(
                  AppIcons.cameraIcon,
                  color: tabsRouter.activeIndex == 1 ? UiKitColors.main : UiKitColors.gray,
                ),
              ),
              BottomNavigationBarItem(
                label: AppConstants.empty,
                icon: SvgPicture.asset(
                  AppIcons.personFilledIcon,
                  color: tabsRouter.activeIndex == 2 ? UiKitColors.main : UiKitColors.gray,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
