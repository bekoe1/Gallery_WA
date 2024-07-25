part of "../sign_up_module.dart";

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = _Started;
  const factory SignUpEvent.signUp({
    required String email,
    required String password,
    required String username,
    required String birthday,
    required String confirmedPas,
  }) = _SignUp;
}
