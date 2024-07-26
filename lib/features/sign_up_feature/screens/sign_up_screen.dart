part of '../sign_up_module.dart';

@RoutePage()
class SignUpScreen extends StatefulWidget implements AutoRouteWrapper {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => SignUpBloc(
        getIt<SignUpRepo>(),
      ),
      child: this,
    );
  }
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscuringPass = false;
  bool _obscuringConfirmedPass = false;

  final _emailController = TextEditingController();
  final _birthdayController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passController = TextEditingController();
  final _confirmPassController = TextEditingController();

  void _changingConfirmedPassVisibility() {
    setState(() {
      _obscuringConfirmedPass = !_obscuringConfirmedPass;
    });
  }

  void _changingPasVisibility() {
    setState(() {
      _obscuringPass = !_obscuringPass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state.currentState == BlocStatesEnum.success) {
          context.router.push(const SignInRoute());
        }
        if (state.currentState == BlocStatesEnum.requestError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.requestError ?? context.localization.someError,
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: const SignUpAppBar(),
          body: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: Text(
                    context.localization.signUp,
                    style: AppTextStyles.h1.copyWith(
                      color: UiKitColors.black,
                    ),
                  ),
                ),
                const Divider(
                  indent: 145,
                  endIndent: 145,
                  thickness: 3,
                  color: UiKitColors.main,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: SizedBox(
                    width: 343,
                    child: UiKitTextFormField(
                      errorText: state.validationError[FieldTypesEnum.usernameField]?.currentError(context),
                      controller: _usernameController,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      hintText: ApiConstants.usernameQuery,
                      icon: SvgPicture.asset(
                        AppIcons.personIcon,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 343,
                  child: UiKitTextFormField(
                    errorText: state.validationError[FieldTypesEnum.birthdayField]?.currentError(context),
                    controller: _birthdayController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.datetime,
                    hintText: ApiConstants.birthday,
                    icon: SvgPicture.asset(
                      AppIcons.calendarIcon,
                    ),
                    onTap: () async {
                      final data = await showDatePicker(
                        context: context,
                        firstDate: DateTime(1950, DateTime.january, 1),
                        lastDate: DateTime.now(),
                      );
                      final regExp = RegExp(ApiConstants.dateOnScreenRegExp);
                      if (data != null) {
                        _birthdayController.text = regExp.stringMatch(
                          data.toString(),
                        )!;
                      }
                    },
                    readonly: true,
                  ),
                ),
                SizedBox(
                  width: 343,
                  child: UiKitTextFormField(
                    errorText: state.validationError[FieldTypesEnum.emailField]?.currentError(context),
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    hintText: ApiConstants.email,
                    icon: SvgPicture.asset(
                      AppIcons.messageIcon,
                    ),
                  ),
                ),
                SizedBox(
                  width: 343,
                  child: UiKitTextFormField(
                    errorText: state.validationError[FieldTypesEnum.passwordField]?.currentError(context),
                    controller: _passController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    obscuringText: _obscuringPass,
                    hintText: ApiConstants.passwordQuery,
                    icon: GestureDetector(
                      child: SvgPicture.asset(
                        _obscuringPass ? AppIcons.visibleOffIcon : AppIcons.visibleOnIcon,
                      ),
                      onTap: () {
                        _changingPasVisibility();
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 343,
                  child: UiKitTextFormField(
                    errorText: state.validationError[FieldTypesEnum.confirmPasField]?.currentError(context),
                    controller: _confirmPassController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    obscuringText: _obscuringConfirmedPass,
                    hintText: ApiConstants.confirmPas,
                    icon: GestureDetector(
                      child: SvgPicture.asset(
                        _obscuringConfirmedPass ? AppIcons.visibleOffIcon : AppIcons.visibleOnIcon,
                      ),
                      onTap: () {
                        _changingConfirmedPassVisibility();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: SizedBox(
                    width: 163,
                    child: UiKitFilledButton(
                      isLoading: state.currentState == BlocStatesEnum.loading,
                      text: context.localization.signUp,
                      onPressed: () {
                        context.read<SignUpBloc>().add(
                              SignUpEvent.signUp(
                                birthday: _birthdayController.text,
                                username: _usernameController.text,
                                password: _passController.text,
                                email: _emailController.text,
                                confirmedPas: _confirmPassController.text,
                              ),
                            );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    width: 163,
                    child: UiKitTextButton(
                      isLoading: state.currentState == BlocStatesEnum.loading,
                      text: context.localization.signIn,
                      onPressed: () {
                        context.router.push(
                          const SignInRoute(),
                        );
                      },
                    ),
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
