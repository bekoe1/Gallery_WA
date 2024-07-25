import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:imagegalery/code_kit/di/injection.dart';
import 'package:imagegalery/features/sign_in_feature/sign_in_module.dart';
import 'package:imagegalery/features/sign_up_feature/repo/sign_up_repo.dart';
import 'package:imagegalery/features/sign_up_feature/sign_up_module.dart';
import 'package:injectable/injectable.dart';

import '../../features/onboarding_feature/onboarding_feature_module.dart';

@module
abstract class AppModule {
  @Singleton()
  FlutterSecureStorage secureStorage() {
    return const FlutterSecureStorage();
  }

  @Singleton()
  Dio dio() {
    return Dio();
  }

  @Singleton()
  UserTokenRepo tokenRepo() {
    return UserTokenProvider(
      storage: getIt<FlutterSecureStorage>(),
      dio: getIt<Dio>(),
    );
  }

  SignInRepo signInRepo() {
    return SignInDataProvider(
      dio: getIt<Dio>(),
    );
  }

  SignUpRepo signUpRepo() {
    return SignUpDataProvider(
      dio: getIt<Dio>(),
    );
  }
}
