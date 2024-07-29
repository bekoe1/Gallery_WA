part of '../../../sign_up_module.dart';

@freezed
class RequestRefreshTokenDto with _$RequestRefreshTokenDto {
  const factory RequestRefreshTokenDto({
    required String grantType,
    required String refreshToken,
    required String clientId,
    required String clientSecret,
  }) = _RequestRefreshTokenDto;

  factory RequestRefreshTokenDto.fromJson(Map<String, dynamic> json) => _$RequestRefreshTokenDtoFromJson(json);
}
