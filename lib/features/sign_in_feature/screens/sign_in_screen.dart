part of '../sign_in_module.dart';

@RoutePage()
class SignInScreen extends StatefulWidget implements AutoRouteWrapper {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => SignInBloc(
        signInRepo: getIt<SignInRepo>(),
        tokenRepo: getIt<UserTokenRepo>(),
      ),
      child: this,
    );
  }
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obscuringPass = false;
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  void _changingFlag() {
    setState(() {
      _obscuringPass = !_obscuringPass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state.status == BlocStatesEnum.requestError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.requestError ?? context.localization.someError,
              ),
            ),
          );
        }
        if (state.status == BlocStatesEnum.success) {
          //TODO in next feature - Route to the main screen
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leadingWidth: 100,
            toolbarHeight: 50,
            leading: UiKitBackButton(
              onTap: () {
                context.router.maybePop();
              },
            ),
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(
                5.0,
              ),
              child: Divider(
                height: 1,
                color: UiKitColors.gray,
              ),
            ),
          ),
          body: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 112),
                Center(
                  child: Text(
                    context.localization.signIn,
                    style: AppTextStyles.h1.copyWith(
                      color: UiKitColors.black,
                    ),
                  ),
                ),
                const Divider(
                  indent: 150,
                  endIndent: 145,
                  thickness: 3,
                  color: UiKitColors.main,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: SizedBox(
                    width: 343,
                    child: UiKitTextFormField(
                      controller: _emailController,
                      errorText: state.validationError[FieldTypesEnum.emailField]?.currentError(context),
                      hintText: AppConstants.email,
                      icon: SvgPicture.asset(
                        AppIcons.messageIcon,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 343,
                  child: UiKitTextFormField(
                    controller: _passController,
                    errorText: state.validationError[FieldTypesEnum.passwordField]?.currentError(context),
                    obscuringText: _obscuringPass,
                    hintText: AppConstants.passwordQuery,
                    icon: GestureDetector(
                      child: SvgPicture.asset(
                        _obscuringPass ? AppIcons.visibleOffIcon : AppIcons.visibleOnIcon,
                      ),
                      onTap: () {
                        _changingFlag();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: SizedBox(
                    width: 163,
                    child: UiKitFilledButton(
                      isLoading: state.status.isLoading(),
                      text: context.localization.signIn,
                      onPressed: () {
                        context.read<SignInBloc>().add(
                              SignInEvent.signIn(
                                email: _emailController.text,
                                password: _passController.text,
                              ),
                            );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 163,
                  child: UiKitTextButton(
                    isLoading: state.status.isLoading(),
                    text: context.localization.signUp,
                    onPressed: () {
                      context.router.push(
                        const SignUpRoute(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
