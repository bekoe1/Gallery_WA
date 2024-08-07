part of '../sign_in_module.dart';

@RestApi()
abstract class SignInDataProvider {
  factory SignInDataProvider(
    Dio dio, {
    String? baseUrl,
  }) = _SignInDataProvider;

  @POST(AppConstants.signInEndPoint)
  Future<TokenDto?> signIn({
    @Body() required RequestUserDto userDto,
  });
}
