library OnBoardingModule;

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imagegalery/code_kit/di/injection.dart';
import 'package:imagegalery/code_kit/resources/themes/module/theme_module.dart';
import 'package:imagegalery/code_kit/resources/themes_data/app_icons.dart';
import 'package:imagegalery/code_kit/routing/app_router.gr.dart';
import 'package:imagegalery/extensions/localization_extension.dart';
import 'package:imagegalery/features/onboarding_feature/bloc/onboarding_bloc.dart';
import 'package:imagegalery/features/onboarding_feature/repo/user_token_repo.dart';
import 'package:imagegalery/ui_kit/module/ui_kit_widgets_module.dart';

import '../../code_kit/resources/constants/api_constants.dart';

part 'data_providers/user_token_provider.dart';
part 'models/models/token_model.dart';
part 'onboarding_feature_module.freezed.dart';
part 'onboarding_feature_module.g.dart';
part 'screens/initial/auth_initial_screen.dart';
part 'screens/onboarding/onboarding_screen.dart';
