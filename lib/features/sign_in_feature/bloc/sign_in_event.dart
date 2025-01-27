part of "../sign_in_module.dart";

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.started() = _Started;
  const factory SignInEvent.signIn({
    required String email,
    required String password,
  }) = _SignIn;
}
