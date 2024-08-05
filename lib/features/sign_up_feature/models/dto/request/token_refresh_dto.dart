part of '../../../sign_up_module.dart';

@freezed
class RequestRefreshTokenDto with _$RequestRefreshTokenDto {
  const factory RequestRefreshTokenDto({
    @JsonKey(name: "grant_type") required String grantType,
    @JsonKey(name: "refresh_token") required String refreshToken,
    @JsonKey(name: "client_id") required String clientId,
    @JsonKey(name: "client_secret") required String clientSecret,
  }) = _RequestRefreshTokenDto;

  factory RequestRefreshTokenDto.fromJson(Map<String, dynamic> json) => _$RequestRefreshTokenDtoFromJson(json);
}
