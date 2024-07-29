part of '../../sign_up_module.dart';

@freezed
class TokenDto with _$TokenDto {
  const factory TokenDto({
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'access_token') required String accessToken,
  }) = _TokenDto;

  factory TokenDto.fromJson(Map<String, dynamic> json) => _$TokenDtoFromJson(json);

  const TokenDto._();

  toModel() {
    return TokenModel(
      refreshToken: refreshToken,
      accessToken: accessToken,
    );
  }
}
