part of '../sign_in_module.dart';

class SignInDataProvider implements SignInRepo {
  final SignInClient signInClient;

  SignInDataProvider({required this.signInClient});

  @override
  Future<TokenModel?> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final requestDto = RequestUserDto(
        grantType: AppConstants.passwordQuery,
        username: email,
        password: password,
        clientId: AppConstants.clientIdValue,
        clientSecret: AppConstants.clientSecretValue,
      );

      final response = await signInClient.signIn(
        userDto: requestDto.toJson(),
      );

      if (response != null) {
        return response.toModel();
      }
      return null;
    } on DioException catch (e) {
      log(e.response.toString());
      rethrow;
    }
  }
}
