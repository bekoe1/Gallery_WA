import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imagegalery/code_kit/di/injection.dart';
import 'package:imagegalery/code_kit/resources/constants/api_constants.dart';
import 'package:imagegalery/code_kit/resources/enums.dart';
import 'package:imagegalery/code_kit/resources/themes/module/theme_module.dart';
import 'package:imagegalery/code_kit/resources/themes_data/app_colors.dart';
import 'package:imagegalery/code_kit/resources/themes_data/app_icons.dart';
import 'package:imagegalery/code_kit/routing/app_router.gr.dart';
import 'package:imagegalery/extensions/localization_extension.dart';
import 'package:imagegalery/features/extensions/errors_enum_extension.dart';
import 'package:imagegalery/features/sign_up_feature/repo/sign_up_repo.dart';
import 'package:imagegalery/ui_kit/module/ui_kit_widgets_module.dart';

import '../bloc/auth_freezed/sign_up_bloc.dart';

@RoutePage()
class SignUpScreen extends StatefulWidget implements AutoRouteWrapper {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => SignUpBloc(getIt<SignUpRepo>()),
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
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return BlocListener<SignUpBloc, SignUpState>(
          listener: (context, state) {
            if (state.currentState == SignUpStates.requestError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.requestError ?? context.localization.someError,
                  ),
                ),
              );
            }

            if (state.currentState == SignUpStates.signUpDone) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    context.localization.successSignIn,
                  ),
                ),
              );

              context.router.push(
                const SignInRoute(),
              );
            }
          },
          child: Scaffold(
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
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: Text(
                      context.localization.SignUp,
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
                  const SizedBox(height: 60),
                  SizedBox(
                    width: 343,
                    child: UiKitTextFormField(
                      // errorText: state.validationError[FieldTypesEnum.usernameField]?.currentError,
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
                  const SizedBox(height: 20),
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
                        final regExp = RegExp(r'^.{0,10}');
                        if (data != null) {
                          _birthdayController.text = regExp.stringMatch(
                            data.toString(),
                          )!;
                        }
                      },
                      readonly: true,
                    ),
                  ),
                  const SizedBox(height: 20),
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
                  const SizedBox(height: 20),
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
                  const SizedBox(height: 20),
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
                  const SizedBox(height: 60),
                  SizedBox(
                    width: 163,
                    child: UiKitFilledButton(
                      text: context.localization.SignUp,
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
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 163,
                    child: UiKitTextButton(
                      text: context.localization.SignIn,
                      onPressed: () {
                        context.router.push(
                          const SignInRoute(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
