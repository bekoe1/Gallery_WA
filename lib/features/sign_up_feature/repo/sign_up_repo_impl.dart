part of '../sign_up_module.dart';

class SignUpRepoImpl implements SignUpRepo {
  final SignUpDataProvider signUpDataProvider;

  SignUpRepoImpl({required this.signUpDataProvider});

  @override
  Future<UserModel?> createNewUser({required RequestUserSignUpDto dto}) async {
    final response = await signUpDataProvider.createUser(userDto: dto);
    if (response != null) {
      return response.toModel();
    }
    return null;
  }
}
