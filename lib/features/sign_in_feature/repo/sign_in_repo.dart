part of "../sign_in_module.dart";

abstract class SignInRepo {
  Future<TokenModel?> signIn({
    required String email,
    required String password,
  });
}
