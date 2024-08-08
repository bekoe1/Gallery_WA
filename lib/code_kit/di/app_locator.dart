import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:imagegalery/code_kit/di/injection.dart';
import 'package:imagegalery/code_kit/resources/constants/app_constants.dart';
import 'package:imagegalery/features/media_output_feature/media_output_module.dart';
import 'package:imagegalery/features/onboarding_feature/onboarding_feature_module.dart';
import 'package:imagegalery/features/sign_in_feature/sign_in_module.dart';
import 'package:imagegalery/features/sign_up_feature/repo/sign_up_repo.dart';
import 'package:imagegalery/features/sign_up_feature/sign_up_module.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @Singleton()
  FlutterSecureStorage secureStorage() {
    return const FlutterSecureStorage();
  }

  @Singleton()
  Dio dio() {
    return Dio(
      BaseOptions(
        receiveDataWhenStatusError: true,
        baseUrl: AppConstants.baseUrl,
      ),
    );
  }

  @Singleton()
  UserTokenRepo tokenRepo() {
    return UserTokenRepoImpl(
      tokenProvider: UserTokenProvider(getIt<Dio>()),
      storage: getIt<FlutterSecureStorage>(),
    );
  }

  @Singleton()
  SignInRepo signInRepo() {
    return SignInRepoImpl(
      signInDataProvider: SignInDataProvider(
        getIt<Dio>(),
      ),
    );
  }

  @Singleton()
  SignUpRepo signUpRepo() {
    return SignUpRepoImpl(
      signUpDataProvider: SignUpDataProvider(
        getIt<Dio>(),
      ),
    );
  }

  ImageRepo imageRepo() {
    return ImageRepoImpl(
      imageDataProvider: ImageDataProvider(
        getIt<Dio>(),
      ),
    );
  }
}
