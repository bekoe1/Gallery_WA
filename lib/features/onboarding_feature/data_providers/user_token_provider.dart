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
}
