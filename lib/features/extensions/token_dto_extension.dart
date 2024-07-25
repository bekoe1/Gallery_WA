import '../onboarding_feature/onboarding_feature_module.dart';
import '../sign_up_feature/sign_up_module.dart';

extension ToModel on TokenDto {
  toModel() {
    return TokenModel(
      refreshToken: refreshToken,
      accessToken: accessToken,
    );
  }
}
