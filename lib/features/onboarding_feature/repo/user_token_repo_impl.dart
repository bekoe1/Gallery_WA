part of '../onboarding_feature_module.dart';

class UserTokenRepoImpl implements UserTokenRepo {
  final UserTokenProvider tokenProvider;
  final FlutterSecureStorage storage;

  UserTokenRepoImpl({
    required this.tokenProvider,
    required this.storage,
  });

  @override
  Future<void> saveTokens(TokenModel token) async {
    await saveRefreshToken(token.refreshToken);
    await saveAccessToken(token.accessToken);
  }

  @override
  Future<void> deleteAccessToken() async {
    await storage.delete(
      key: AppConstants.accessTokenStorageName,
    );
  }

  @override
  Future<void> deleteRefreshToken() async {
    await storage.delete(
      key: AppConstants.refreshTokenStorageName,
    );
  }

  @override
  Future<void> saveAccessToken(String accessToken) async {
    await storage.write(
      key: AppConstants.accessTokenStorageName,
      value: accessToken,
    );
  }

  @override
  Future<TokenModel?> getTokenFromStorage() async {
    final accessToken = await storage.read(
      key: AppConstants.accessTokenStorageName,
    );
    final refreshToken = await storage.read(
      key: AppConstants.refreshTokenStorageName,
    );
    return (refreshToken != null && accessToken != null)
        ? TokenModel(
            refreshToken: refreshToken,
            accessToken: accessToken,
          )
        : null;
  }

  @override
  Future<TokenModel?> refreshAccessToken() async {
    final token = await getTokenFromStorage();
    final refreshToken = token?.refreshToken;
    await deleteTokens();
    if (refreshToken == null) return null;

    final response = await tokenProvider.refreshAccessToken(
      requestTokenJson: RequestRefreshTokenDto(
        grantType: AppConstants.refreshTokenQueryValue,
        refreshToken: refreshToken,
        clientId: AppConstants.clientIdValue,
        clientSecret: AppConstants.clientSecretValue,
      ),
    );
    if (response == null) {
      return null;
    }
    await saveTokens(response.toModel());
    return response.toModel();
  }

  @override
  Future<void> saveRefreshToken(String refreshToken) async {
    await storage.write(
      key: AppConstants.refreshTokenStorageName,
      value: refreshToken,
    );
  }

  @override
  Future<void> deleteTokens() async {
    await deleteAccessToken();
    await deleteRefreshToken();
  }
}
