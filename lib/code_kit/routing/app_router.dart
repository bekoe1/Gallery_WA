import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OnboardingRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: AuthInitialRoute.page,
        ),
        AutoRoute(
          page: SignInRoute.page,
        ),
        AutoRoute(
          page: SignUpRoute.page,
        ),
        AutoRoute(
          page: MainRoute.page,
          children: [
            AutoRoute(
              page: NewPhotosRoute.page,
            ),
            AutoRoute(
              page: PopularPhotosRoute.page,
            )
          ],
        ),
        AutoRoute(
          page: ImageViewRoute.page,
        ),
      ];
}
