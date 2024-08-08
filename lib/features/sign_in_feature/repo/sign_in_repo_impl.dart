part of '../sign_in_module.dart';

class SignInRepoImpl implements SignInRepo {
  final SignInDataProvider signInDataProvider;

  SignInRepoImpl({required this.signInDataProvider});

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

    final response = await signInDataProvider.signIn(
      userDto: requestDto,
    );

    if (response != null) {
      return response.toModel();
    }
    return null;
  }
}
