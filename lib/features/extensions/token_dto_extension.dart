import 'package:imagegalery/features/sign_up_feature/models/model/token_model.dart';

import '../sign_up_feature/sign_up_feature.dart';

extension on TokenDto {
  TokenModel toModel(TokenDto token) {
    return TokenModel(
      refreshToken: token.refreshToken,
      accessToken: token.accessToken,
    );
  }
}
