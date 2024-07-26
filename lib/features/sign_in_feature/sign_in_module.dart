library SignInModule;

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imagegalery/code_kit/di/injection.dart';
import 'package:imagegalery/code_kit/resources/constants/api_constants.dart';
import 'package:imagegalery/code_kit/resources/enums.dart';
import 'package:imagegalery/code_kit/resources/exceptions/api_exceptions.dart';
import 'package:imagegalery/code_kit/resources/themes/module/theme_module.dart';
import 'package:imagegalery/code_kit/resources/themes_data/app_colors.dart';
import 'package:imagegalery/code_kit/resources/themes_data/app_icons.dart';
import 'package:imagegalery/code_kit/routing/app_router.gr.dart';
import 'package:imagegalery/extensions/localization_extension.dart';
import 'package:imagegalery/features/extensions/field_errors_enum_extension.dart';
import 'package:imagegalery/features/extensions/token_dto_extension.dart';
import 'package:imagegalery/features/onboarding_feature/onboarding_feature_module.dart';
import 'package:imagegalery/features/sign_up_feature/sign_up_module.dart';
import 'package:imagegalery/ui_kit/module/ui_kit_widgets_module.dart';

import '../../code_kit/helpers/validation_helper.dart';

part 'bloc/sign_in_bloc.dart';
part 'bloc/sign_in_event.dart';
part 'bloc/sign_in_state.dart';
part 'data_provider/sign_in_data_provider.dart';
part 'models/dto/request/request_user_dto.dart';
part 'repo/sign_in_repo.dart';
part 'screens/sign_in_screen.dart';
part 'sign_in_module.freezed.dart';
part 'sign_in_module.g.dart';