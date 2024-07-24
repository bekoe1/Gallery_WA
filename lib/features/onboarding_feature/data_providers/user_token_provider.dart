part of '../onboarding_feature_module.dart';

class UserTokenProvider implements UserTokenRepo {
  final FlutterSecureStorage _storage;

  UserTokenProvider({
    required FlutterSecureStorage storage,
  }) : _storage = storage;

  @override
  Future<TokenModel?> getTokenFromStorage() async {
    final accessToken = await _storage.read(
      key: ApiConstants.accessTokenStorageName,
    );
    final refreshToken = await _storage.read(
      key: ApiConstants.refreshTokenStorageName,
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
      key: ApiConstants.accessTokenStorageName,
    );
  }

  @override
  Future<void> deleteRefreshToken() async {
    _storage.delete(
      key: ApiConstants.refreshTokenStorageName,
    );
  }

  @override
  Future<void> saveAccessToken(String accessToken) async {
    _storage.write(
      key: ApiConstants.accessTokenStorageName,
      value: accessToken,
    );
  }

  @override
  Future<void> saveRefreshToken(String refreshToken) async {
    _storage.write(
      key: ApiConstants.accessTokenStorageName,
      value: refreshToken,
    );
  }
}
