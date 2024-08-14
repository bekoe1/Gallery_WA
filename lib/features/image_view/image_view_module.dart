library ImageViewModule;

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imagegalery/code_kit/di/app_locator.dart';
import 'package:imagegalery/code_kit/resources/constants/app_constants.dart';
import 'package:imagegalery/code_kit/resources/enums.dart';
import 'package:imagegalery/code_kit/resources/themes/module/theme_module.dart';
import 'package:imagegalery/code_kit/resources/themes_data/app_colors.dart';
import 'package:imagegalery/code_kit/resources/themes_data/app_icons.dart';
import 'package:imagegalery/extensions/extensions_module.dart';
import 'package:imagegalery/features/media_output_feature/media_output_module.dart';
import 'package:imagegalery/features/onboarding_feature/onboarding_feature_module.dart';
import 'package:imagegalery/ui_kit/module/ui_kit_widgets_module.dart';
import 'package:intl/intl.dart';
import 'package:photo_view/photo_view.dart';
import 'package:retrofit/http.dart';
import 'package:skeletonizer/skeletonizer.dart';

part 'bloc/image_view_bloc.dart';
part 'bloc/image_view_event.dart';
part 'bloc/image_view_state.dart';
part 'data_provider/image_view_data_provider.dart';
part 'image_view_module.freezed.dart';
part 'image_view_module.g.dart';
part 'models/dto/image_get_by_id_dto.dart';
part 'models/dto/user_information_dto.dart';
part 'models/image_get_by_id_model.dart';
part 'models/user_information_model.dart';
part 'repo/image_view_repo.dart';
part 'repo/image_view_repo_impl.dart';
part 'screens/image_view_screen.dart';