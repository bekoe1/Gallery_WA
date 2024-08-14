part of '../media_output_module.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        ///TODO FIX after adding real routes
        HomeRoute(),
        AddImageRoute(),
      ],
      builder: (context, child, tabsRouter) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: IndexedStack(
            index: tabsRouter.activeIndex,
            children: [
              const HomeScreen(),
              BlocProvider(
                create: (context) => AddImageBloc(
                  tokenRepo: injection<UserTokenRepo>(),
                  addImageRepo: injection<AddImageRepo>(),
                )..add(
                    const AddImageEvent.fetchData(isRefreshing: true),
                  ),
                child: const AddImageScreen(),
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
