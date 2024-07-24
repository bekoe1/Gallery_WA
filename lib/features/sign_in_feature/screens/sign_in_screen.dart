import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imagegalery/code_kit/resources/constants/api_constants.dart';
import 'package:imagegalery/code_kit/resources/enums.dart';
import 'package:imagegalery/code_kit/resources/themes/module/theme_module.dart';
import 'package:imagegalery/code_kit/resources/themes_data/app_colors.dart';
import 'package:imagegalery/code_kit/resources/themes_data/app_icons.dart';
import 'package:imagegalery/code_kit/routing/app_router.gr.dart';
import 'package:imagegalery/extensions/localization_extension.dart';
import 'package:imagegalery/features/extensions/errors_enum_extension.dart';
import 'package:imagegalery/features/sign_in_feature/bloc/sign_in_bloc.dart';
import 'package:imagegalery/ui_kit/module/ui_kit_widgets_module.dart';

@RoutePage()
class SignInScreen extends StatefulWidget implements AutoRouteWrapper {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => SignInBloc(),
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
    return BlocBuilder<SignInBloc, SignInState>(
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
                    context.localization.SignIn,
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
                const SizedBox(height: 60),
                SizedBox(
                  width: 343,
                  child: UiKitTextFormField(
                    controller: _emailController,
                    errorText: state.validationError[FieldTypesEnum.emailField]?.currentError(context),
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
                    controller: _passController,
                    errorText: state.validationError[FieldTypesEnum.passwordField]?.currentError(context),
                    obscuringText: _obscuringPass,
                    hintText: ApiConstants.passwordQuery,
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
                const SizedBox(height: 60),
                SizedBox(
                  width: 163,
                  child: UiKitFilledButton(
                    text: context.localization.SignIn,
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
                const SizedBox(height: 10),
                SizedBox(
                  width: 163,
                  child: UiKitTextButton(
                    text: context.localization.SignUp,
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
