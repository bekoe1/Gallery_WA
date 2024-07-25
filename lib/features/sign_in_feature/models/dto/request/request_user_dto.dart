part of '../../../sign_in_module.dart';

@freezed
class RequestUserDto with _$RequestUserDto {
  const factory RequestUserDto({
    @JsonKey(name: "grant_type") required String grantType,
    required String username,
    required String password,
    @JsonKey(name: "client_id") required String clientId,
    @JsonKey(name: "client_secret") required String clientSecret,
  }) = _RequestUserDto;

  factory RequestUserDto.fromJson(Map<String, dynamic> json) => _$RequestUserDtoFromJson(json);
}
