import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:imagegalery/code_kit/interceptors/interceptors_module.dart';
import 'package:imagegalery/code_kit/resources/constants/app_constants.dart';
import 'package:imagegalery/features/media_output_feature/media_output_module.dart';
import 'package:imagegalery/features/onboarding_feature/onboarding_feature_module.dart';
import 'package:imagegalery/features/sign_in_feature/sign_in_module.dart';
import 'package:imagegalery/features/sign_up_feature/repo/sign_up_repo.dart';
import 'package:imagegalery/features/sign_up_feature/sign_up_module.dart';

final getIt = GetIt.instance;

void setUpLocator() {
  getIt
    ..registerSingleton<FlutterSecureStorage>(
      const FlutterSecureStorage(),
    )
    ..registerSingleton<Dio>(
      Dio(
        BaseOptions(
          receiveDataWhenStatusError: true,
          baseUrl: AppConstants.baseUrl,
        ),
      ),
    )
    ..registerSingleton<UserTokenRepo>(
      UserTokenRepoImpl(
        tokenProvider: UserTokenProvider(getIt<Dio>()),
        storage: getIt<FlutterSecureStorage>(),
      ),
    )
    ..registerSingleton<SignInRepo>(
      SignInRepoImpl(
        signInDataProvider: SignInDataProvider(
          getIt<Dio>(),
        ),
      ),
    )
    ..registerSingleton<SignUpRepo>(
      SignUpRepoImpl(
        signUpDataProvider: SignUpDataProvider(
          getIt<Dio>(),
        ),
      ),
    )
    ..registerSingleton<ImageRepo>(
      ImageRepoImpl(
        imageDataProvider: ImageDataProvider(
          getIt<Dio>(),
        ),
      ),
    );

  getIt<Dio>().interceptors.add(
        AppInterceptor(
          tokenRepo: getIt<UserTokenRepo>(),
        ),
      );
}
