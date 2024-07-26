part of '../sign_up_module.dart';

class SignUpDataProvider implements SignUpRepo {
  final Dio dio;

  SignUpDataProvider({required this.dio});

  @override
  Future<UserModel?> createNewUser({required RequestUserSignUpDto dto}) async {
    final response = await dio.post(
      "${ApiConstants.baseUrl}/users",
      options: Options(
        contentType: ApiConstants.contentType,
      ),
      data: {
        ApiConstants.displayedName: dto.displayName,
        ApiConstants.birthday: dto.birthday.toString(),
        ApiConstants.plainPassword: dto.password,
        ApiConstants.email: dto.email,
        ApiConstants.phone: dto.phone,
      },
    );

    return ResponseUserDto.fromJson(response.data).toModel();
  }
}
