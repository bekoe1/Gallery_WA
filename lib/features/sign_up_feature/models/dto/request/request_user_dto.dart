part of '../../../sign_up_feature.dart';

@freezed
class RequestUserDto with _$RequestUserDto {
  const factory RequestUserDto({
    required String email,
    required DateTime birthday,
    required String displayName,
    String? phone,
    required String password,
  }) = _RequestUserDto;

  factory RequestUserDto.fromJson(Map<String, dynamic> json) => _$RequestUserDtoFromJson(json);
}
