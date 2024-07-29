part of '../sign_up_module.dart';

class SignUpDataProvider implements SignUpRepo {
  final Dio dio;

  SignUpDataProvider({required this.dio});

  @override
  Future<UserModel?> createNewUser({required RequestUserSignUpDto dto}) async {
    final response = await dio.post(
      "${AppConstants.baseUrl}/users",
      options: Options(
        contentType: AppConstants.contentType,
      ),
      data: {
        AppConstants.displayedName: dto.displayName,
        AppConstants.birthday: dto.birthday.toString(),
        AppConstants.plainPassword: dto.password,
        AppConstants.email: dto.email,
        AppConstants.phone: dto.phone,
      },
    );

    return ResponseUserDto.fromJson(response.data).toModel();
  }
}
