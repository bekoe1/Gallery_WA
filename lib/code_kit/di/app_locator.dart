import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:imagegalery/code_kit/di/injection.dart';
import 'package:imagegalery/features/onboarding_feature/repo/user_token_repo.dart';
import 'package:injectable/injectable.dart';

import '../../features/onboarding_feature/onboarding_feature_module.dart';

@module
abstract class AppModule {
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
}
