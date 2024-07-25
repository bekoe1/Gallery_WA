part of '../sign_in_module.dart';

class SignInDataProvider implements SignInRepo {
  final Dio _dio;

  SignInDataProvider({required Dio dio}) : _dio = dio;

  @override
  Future<TokenModel?> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final requestDto = RequestUserDto(
        grantType: ApiConstants.passwordQuery,
        username: email,
        password: password,
        clientId: ApiConstants.clientIdValue,
        clientSecret: ApiConstants.clientSecretValue,
      );
      final response = await _dio.post(
        "${ApiConstants.baseUrl}/token",
        data: requestDto.toJson(),
      );

      final tokenModel = TokenDto.fromJson(response.data).toModel();
      return tokenModel;
    } catch (e) {
      return null;
    }
  }
}
