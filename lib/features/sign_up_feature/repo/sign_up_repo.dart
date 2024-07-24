import '../sign_up_feature.dart';

abstract class SignUpRepo {
  Future<String?> createNewUser({
    required RequestUserDto dto,
  });
}
