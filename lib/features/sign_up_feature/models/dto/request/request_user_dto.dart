part of '../../../sign_up_module.dart';

@freezed
class RequestUserSignUpDto with _$RequestUserSignUpDto {
  const factory RequestUserSignUpDto({
    required String email,
    required String birthday,
    required String displayName,
    required String phone,
    required String plainPassword,
  }) = _RequestUserDto;

  factory RequestUserSignUpDto.fromJson(Map<String, dynamic> json) => _$RequestUserSignUpDtoFromJson(json);
}
