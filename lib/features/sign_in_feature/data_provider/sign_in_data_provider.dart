part of '../sign_in_module.dart';

class SignInDataProvider implements SignInRepo {
  final Dio _dio;

  SignInDataProvider({required Dio dio}) : _dio = dio;

  @override
  Future<TokenModel?> signIn({
    required String email,
    required String password,
  }) async {
    final requestDto = RequestUserDto(
      grantType: AppConstants.passwordQuery,
      username: email,
      password: password,
      clientId: AppConstants.clientIdValue,
      clientSecret: AppConstants.clientSecretValue,
    );
    final response = await _dio.post(
      "${AppConstants.baseUrl}/token",
      data: requestDto.toJson(),
    );

    final tokenModel = TokenDto.fromJson(response.data).toModel();
    return tokenModel;
  }
}
