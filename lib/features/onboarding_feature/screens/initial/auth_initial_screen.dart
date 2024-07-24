part of '../../onboarding_feature_module.dart';

@RoutePage()
class AuthInitialScreen extends StatelessWidget {
  const AuthInitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 170),
          Center(
            child: SvgPicture.asset(
              AppIcons.webantSvgLogo,
              height: 140,
              width: 135,
            ),
          ),
          const SizedBox(height: 36),
          Text(
            context.localization.welcomeText,
            style: AppTextStyles.h1,
          ),
          const SizedBox(height: 80),
          SizedBox(
            width: 343,
            height: 40,
            child: UiKitFilledButton(
              text: context.localization.createAccount,
              onPressed: () {
                context.router.push(
                  const SignUpRoute(),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 343,
            height: 40,
            child: UiKitOutlinedButton(
              text: context.localization.alreadyHaveAcc,
              onPressed: () {
                context.router.push(
                  const SignInRoute(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
