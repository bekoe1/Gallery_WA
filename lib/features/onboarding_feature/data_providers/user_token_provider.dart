part of '../onboarding_feature_module.dart';

@RestApi()
abstract class UserTokenProvider {
  factory UserTokenProvider(
    Dio dio, {
    String? baseUrl,
  }) = _UserTokenProvider;

  @POST("/token")
  Future<TokenDto?> refreshAccessToken({
    @Part(name: "grant_type") required String grantType,
    @Part(name: "refresh_token") required String refreshToken,
    @Part(name: "client_id") required String clientId,
    @Part(name: "client_secret") required String clientSecret,
  });
}
