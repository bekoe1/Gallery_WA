library MediaOutputModule;

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart' hide Options;
import 'package:imagegalery/code_kit/di/injection.dart';
import 'package:imagegalery/code_kit/resources/constants/app_constants.dart';
import 'package:imagegalery/code_kit/resources/themes/module/theme_module.dart';
import 'package:imagegalery/code_kit/routing/app_router.gr.dart';
import 'package:imagegalery/features/onboarding_feature/onboarding_feature_module.dart';
import 'package:imagegalery/ui_kit/module/ui_kit_widgets_module.dart';

part 'data_provider/image_data_provider.dart';
part 'repo/image_repo.dart';
part 'screens/main_screen.dart';
part 'screens/tab_elements/new_photos_tab.dart';
part 'screens/tab_elements/popular_photos_tab.dart';
part 'widgets/grid_image_element.dart';
