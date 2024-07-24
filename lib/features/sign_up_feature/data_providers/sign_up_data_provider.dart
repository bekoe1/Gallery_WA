import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:imagegalery/code_kit/resources/constants/api_constants.dart';

import '../repo/sign_up_repo.dart';
import '../sign_up_feature.dart';

class SignUpDataProvider implements SignUpRepo {
  final Dio dio;

  SignUpDataProvider({required this.dio});
  @override
  Future<String?> createNewUser({required RequestUserDto dto}) async {
    try {
      final response = await dio.post(
        "${ApiConstants.baseUrl}/users",
        options: Options(
          contentType: "application/ld+json",
        ),
        data: {
          ApiConstants.displayedName: dto.displayName,
          ApiConstants.birthday: dto.birthday.toString(),
          ApiConstants.plainPassword: dto.password,
          ApiConstants.email: dto.email,
          ApiConstants.phone: "12345555",

          ///TODO PHONE
        },
      );
      if (response.statusCode == 201) {
        return null;
      } else {
        log(response.data.toString());
        return response.data.toString();
      }
    } on DioException catch (e) {
      return e.response == null ? "Error occupied" : e.response!.data[ApiConstants.responseDescription];
    }
  }
}
