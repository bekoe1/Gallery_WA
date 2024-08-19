import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:imagegalery/code_kit/interceptors/interceptors_module.dart';
import 'package:imagegalery/code_kit/resources/constants/app_constants.dart';
import 'package:imagegalery/features/add_image_feature/add_image_module.dart';
import 'package:imagegalery/features/image_view/image_view_module.dart';
import 'package:imagegalery/features/media_output_feature/media_output_module.dart';
import 'package:imagegalery/features/onboarding_feature/onboarding_feature_module.dart';
import 'package:imagegalery/features/sign_in_feature/sign_in_module.dart';
import 'package:imagegalery/features/sign_up_feature/repo/sign_up_repo.dart';
import 'package:imagegalery/features/sign_up_feature/sign_up_module.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final injection = GetIt.instance;

void setUpLocator() {
  injection
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
        tokenProvider: UserTokenProvider(injection<Dio>()),
        storage: injection<FlutterSecureStorage>(),
      ),
    )
    ..registerSingleton<SignInRepo>(
      SignInRepoImpl(
        signInDataProvider: SignInDataProvider(
          injection<Dio>(),
        ),
      ),
    )
    ..registerSingleton<SignUpRepo>(
      SignUpRepoImpl(
        signUpDataProvider: SignUpDataProvider(
          injection<Dio>(),
        ),
      ),
    )
    ..registerSingleton<ImageRepo>(
      ImageRepoImpl(
        imageDataProvider: ImageDataProvider(
          injection<Dio>(),
        ),
      ),
    )
    ..registerSingleton<ImageViewRepo>(
      ImageViewRepoImpl(
          imageViewDataProvider: ImageViewDataProvider(
        injection<Dio>(),
      )),
    )
    ..registerSingleton<AddImageRepo>(
      AddImageRepoImpl(
        dataProvider: AddImageDataProvider(
          injection<Dio>(),
        ),
      ),
    );

  injection<Dio>()
    ..interceptors.add(
      AppInterceptor(
        tokenRepo: injection<UserTokenRepo>(),
      ),
    )
    ..interceptors.add(
      PrettyDioLogger(requestBody: true, requestHeader: true),
    );
}
