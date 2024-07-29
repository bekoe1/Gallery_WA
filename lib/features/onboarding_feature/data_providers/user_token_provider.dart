part of '../onboarding_feature_module.dart';

class UserTokenProvider implements UserTokenRepo {
  final FlutterSecureStorage _storage;
  final Dio dio;

  UserTokenProvider({
    required FlutterSecureStorage storage,
    required this.dio,
  }) : _storage = storage;

  @override
  Future<TokenModel?> getTokenFromStorage() async {
    final accessToken = await _storage.read(
      key: AppConstants.accessTokenStorageName,
    );
    final refreshToken = await _storage.read(
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
  Future<void> deleteTokens() async {
    await deleteAccessToken();
    await deleteRefreshToken();
  }

  @override
  Future<void> saveTokens(TokenModel token) async {
    await saveRefreshToken(token.refreshToken);
    await saveAccessToken(token.accessToken);
  }

  @override
  Future<void> deleteAccessToken() async {
    _storage.delete(
      key: AppConstants.accessTokenStorageName,
    );
  }

  @override
  Future<void> deleteRefreshToken() async {
    _storage.delete(
      key: AppConstants.refreshTokenStorageName,
    );
  }

  @override
  Future<void> saveAccessToken(String accessToken) async {
    await _storage.write(
      key: AppConstants.accessTokenStorageName,
      value: accessToken,
      aOptions: AndroidOptions(),
    );
  }

  @override
  Future<void> saveRefreshToken(String refreshToken) async {
    await _storage.write(
      key: AppConstants.refreshTokenStorageName,
      value: refreshToken,
      aOptions: AndroidOptions(),
    );
  }

  @override
  Future<TokenModel?> refreshAccessToken() async {
    final token = await getTokenFromStorage();
    final refreshToken = token?.accessToken;
    if (refreshToken == null) return null;
    final response = await dio.post(
      "${AppConstants.baseUrl}/token",
      data: {
        RequestRefreshTokenDto(
          grantType: AppConstants.refreshTokenQueryValue,
          refreshToken: refreshToken,
          clientId: AppConstants.clientIdValue,
          clientSecret: AppConstants.clientSecretValue,
        ).toJson()
      },
    );

    if (response.data != null) {
      final newToken = TokenDto.fromJson(response.data).toModel();
      await saveTokens(newToken);
      return newToken;
    } else {
      return null;
    }
  }
}
