part of '../onboarding_feature_module.dart';

@RestApi()
abstract class UserTokenProvider {
  factory UserTokenProvider(
    Dio dio, {
    String? baseUrl,
  }) = _UserTokenProvider;

  @POST("/token")
  Future<TokenDto?> refreshAccessToken({
    @Body() required RequestRefreshTokenDto requestTokenJson,
  });
}
