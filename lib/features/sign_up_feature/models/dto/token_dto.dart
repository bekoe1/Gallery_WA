part of '../../sign_up_feature.dart';

@freezed
class TokenDto with _$TokenDto {
  const factory TokenDto({
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'access_token') required String accessToken,
  }) = _TokenDto;
}
