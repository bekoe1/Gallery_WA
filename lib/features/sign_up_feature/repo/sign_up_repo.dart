import 'package:imagegalery/features/sign_up_feature/models/model/user_model.dart';

import '../sign_up_module.dart';

abstract class SignUpRepo {
  Future<UserModel?> createNewUser({
    required RequestUserSignUpDto dto,
  });
}
