import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:imagegalery/code_kit/di/injection.dart';
import 'package:imagegalery/features/onboarding_feature/repo/user_token_repo.dart';
import 'package:imagegalery/features/sign_up_feature/repo/sign_up_repo.dart';
import 'package:injectable/injectable.dart';

import '../../features/onboarding_feature/onboarding_feature_module.dart';
import '../../features/sign_up_feature/data_providers/sign_up_data_provider.dart';

@module
abstract class AppModule {
  @Singleton()
  Dio dio() {
    return Dio();
  }

  @Singleton()
  FlutterSecureStorage secureStorage() {
    return const FlutterSecureStorage();
  }

  @Singleton()
  UserTokenRepo tokenRepo() {
    final UserTokenRepo tokenRepo = UserTokenProvider(
      storage: getIt<FlutterSecureStorage>(),
    );

    return tokenRepo;
  }

  SignUpRepo signUpRepo() {
    return SignUpDataProvider(
      dio: getIt<Dio>(),
    );
  }
}
