part of '../sign_up_module.dart';

class SignUpDataProvider implements SignUpRepo {
  final SignUpClient signUpClient;

  SignUpDataProvider({required this.signUpClient});

  @override
  Future<UserModel?> createNewUser({required RequestUserSignUpDto dto}) async {
    try {
      final response = await signUpClient.createUser(
        userDto: dto.toJson(),
      );
      if (response != null) {
        return response.toModel();
      }
      return null;
    } on DioException catch (error) {
      log(error.response.toString());
      rethrow;
    }
  }
}
