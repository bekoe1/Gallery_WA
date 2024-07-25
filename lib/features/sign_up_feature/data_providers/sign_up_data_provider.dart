part of '../sign_up_module.dart';

class SignUpDataProvider implements SignUpRepo {
  final Dio dio;

  SignUpDataProvider({required this.dio});

  @override
  Future<String?> createNewUser({required RequestUserSignUpDto dto}) async {
    try {
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
      if (response.statusCode == 201) {
        return null;
      } else {
        return response.data.toString();
      }
    } on DioException catch (e) {
      return e.response == null ? ApiConstants.someError : e.response!.data[ApiConstants.responseDescription];
    }
  }
}
