// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:imagegalery/features/onboarding_feature/onboarding_feature_module.dart'
    as _i1;

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    AuthInitialRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthInitialScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.WrappedRoute(child: const _i1.OnboardingScreen()),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthInitialScreen]
class AuthInitialRoute extends _i2.PageRouteInfo<void> {
  const AuthInitialRoute({List<_i2.PageRouteInfo>? children})
      : super(
          AuthInitialRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthInitialRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}

/// generated route for
/// [_i1.OnboardingScreen]
class OnboardingRoute extends _i2.PageRouteInfo<void> {
  const OnboardingRoute({List<_i2.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
