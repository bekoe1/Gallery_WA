part of '../media_output_module.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final controller = TextEditingController();
  int _selectedIndex = 0;

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
      routes: const [
        NewTab(),
        PopularTab(),
      ],
      builder: (context, child, tabsRouter) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            title: UiKitSearchField(
              controller: controller,
            ),
            bottom: TabBar(
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
            children: const [
              NewPhotosTab(),
              PopularPhotosTab(),
            ],
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   currentIndex: _selectedIndex,
          //   items: [
          //     BottomNavigationBarItem(
          //       icon: SvgPicture.asset(
          //         AppIcons.homeIcon,
          //       ),
          //     ),
          //     BottomNavigationBarItem(
          //       icon: SvgPicture.asset(
          //         AppIcons.cameraIcon,
          //       ),
          //     ),
          //     BottomNavigationBarItem(
          //       icon: SvgPicture.asset(
          //         AppIcons.personFilledIcon,
          //       ),
          //     ),
          //   ],
          // ),
        );
      },
    );
  }
}
