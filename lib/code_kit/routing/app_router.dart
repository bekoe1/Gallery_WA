import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
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
        AutoRoute(page: SignUpRoute.page),
      ];
}
