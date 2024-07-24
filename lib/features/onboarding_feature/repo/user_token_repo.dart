import 'package:imagegalery/features/onboarding_feature/onboarding_feature_module.dart';

abstract class UserTokenRepo {
  Future<TokenModel?> getTokenFromStorage();
  Future<void> saveTokens(TokenModel token);
  Future<void> saveRefreshToken(String refreshToken);
  Future<void> saveAccessToken(String accessToken);
  Future<void> deleteTokens();
  Future<void> deleteAccessToken();
  Future<void> deleteRefreshToken();
}
