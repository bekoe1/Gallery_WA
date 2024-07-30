part of '../sign_in_module.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class SignInClient {
  factory SignInClient(
    Dio dio, {
    String? baseUrl,
  }) = _SignInClient;

  @POST(AppConstants.signInEndPoint)
  Future<TokenDto?> signIn({
    @Body() required Map<String, dynamic> userDto,
  });
}
