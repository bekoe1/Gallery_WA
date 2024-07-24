import 'package:imagegalery/features/onboarding_feature/onboarding_feature_module.dart';

abstract class UserTokenRepo {
  Future<TokenModel?> getTokenFromStorage();
}
