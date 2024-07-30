part of '../sign_up_module.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class SignUpClient {
  factory SignUpClient(
    Dio dio, {
    String? baseUrl,
  }) = _SignUpClient;

  @POST(AppConstants.signUpEndPoint)
  @Headers(<String, dynamic>{"Content-Type": AppConstants.contentType})
  Future<ResponseUserDto?> createUser({
    @Body() required Map<String, dynamic> userDto,
  });
}
