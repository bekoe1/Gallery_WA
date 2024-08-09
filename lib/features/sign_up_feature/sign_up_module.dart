library sign_up_feature;

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imagegalery/code_kit/di/app_locator.dart';
import 'package:imagegalery/code_kit/helpers/helpers_module.dart';
import 'package:imagegalery/code_kit/resources/constants/app_constants.dart';
import 'package:imagegalery/code_kit/resources/enums.dart';
import 'package:imagegalery/code_kit/resources/themes/module/theme_module.dart';
import 'package:imagegalery/code_kit/resources/themes_data/app_colors.dart';
import 'package:imagegalery/code_kit/resources/themes_data/app_icons.dart';
import 'package:imagegalery/code_kit/routing/app_router.gr.dart';
import 'package:imagegalery/extensions/extensions_module.dart';
import 'package:imagegalery/features/extensions/features_extensions_module.dart';
import 'package:imagegalery/features/onboarding_feature/onboarding_feature_module.dart';
import 'package:imagegalery/features/sign_up_feature/models/model/user_model.dart';
import 'package:imagegalery/features/sign_up_feature/repo/sign_up_repo.dart';
import 'package:imagegalery/ui_kit/module/ui_kit_widgets_module.dart';
import 'package:retrofit/http.dart';

part '../../ui_kit/ui_kit_auth_bar.dart';
part 'bloc/sign_up_bloc.dart';
part 'bloc/sign_up_event.dart';
part 'bloc/sign_up_state.dart';
part 'data_providers/sign_up_data_provider.dart';
part 'models/dto/request/request_user_dto.dart';
part 'models/dto/request/token_refresh_dto.dart';
part 'models/dto/sign_up_user_dto.dart';
part 'models/dto/token_dto.dart';
part 'repo/sign_up_repo_impl.dart';
part 'screens/sign_up_screen.dart';
part 'sign_up_module.freezed.dart';
part 'sign_up_module.g.dart';
