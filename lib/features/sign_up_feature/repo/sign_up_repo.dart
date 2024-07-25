import '../sign_up_module.dart';

abstract class SignUpRepo {
  Future<String?> createNewUser({
    required RequestUserSignUpDto dto,
  });
}
