part of '../media_output_module.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _controller = TextEditingController();
  int _scrollToTopPage = 0;
  final MediaOutputBloc newImagesBloc = MediaOutputBloc(getIt<ImageRepo>());
  final MediaOutputBloc popularImagesBloc = MediaOutputBloc(getIt<ImageRepo>());

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
          shouldScrollToTop: false,
          bloc: newImagesBloc,
        ),
        PopularPhotosRoute(
          shouldScrollToTop: false,
          bloc: popularImagesBloc,
        ),
      ],
      builder: (context, child, tabsRouter) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            title: UiKitSearchField(
              controller: _controller,
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
                bloc: newImagesBloc
                  ..add(
                    const MediaOutputEvent.fetchData(
                      searchName: AppConstants.empty,
                      popularImages: false,
                      newImages: true,
                      isRefreshing: false,
                    ),
                  ),
                shouldScrollToTop: _scrollToTopPage == 0,
              ),
              PopularPhotosTab(
                bloc: popularImagesBloc
                  ..add(
                    const MediaOutputEvent.fetchData(
                      searchName: AppConstants.empty,
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
