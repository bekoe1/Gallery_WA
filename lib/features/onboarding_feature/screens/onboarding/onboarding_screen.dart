part of '../../onboarding_feature_module.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget implements AutoRouteWrapper {
  const OnboardingScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingBloc(
        getIt<UserTokenRepo>(),
      )..add(
          const OnboardingEvent.checkToken(),
        ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        if (state.status == BlocStatesEnum.success) {
          context.router.replaceAll(
            [
              const TemporaryMainRoute(),
            ],
          );
        } else {
          context.router.replaceAll(
            [
              const AuthInitialRoute(),
            ],
          );
        }
      },
      child: Scaffold(
        body: Center(
          child: SvgPicture.asset(AppIcons.webantSvgLogo),
        ),
      ),
    );
  }
}
