part of '../sign_up_module.dart';

@RestApi()
abstract class SignUpDataProvider {
  factory SignUpDataProvider(
    Dio dio, {
    String? baseUrl,
  }) = _SignUpDataProvider;

  @POST(AppConstants.signUpEndPoint)
  @Headers(<String, dynamic>{"Content-Type": AppConstants.contentType})
  Future<ResponseUserDto?> createUser({
    @Body() required RequestUserSignUpDto userDto,
  });
}
