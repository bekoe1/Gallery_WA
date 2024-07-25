import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:imagegalery/code_kit/di/injection.config.dart';
import 'package:imagegalery/code_kit/interceptors/interceptors_module.dart';
import 'package:injectable/injectable.dart';

import '../../features/onboarding_feature/onboarding_feature_module.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> initDependencies() async {
  getIt.init();
  getIt<Dio>().interceptors.add(
        AppInterceptor(
          tokenRepo: getIt<UserTokenRepo>(),
        ),
      );
}
