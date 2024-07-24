part of '../../sign_up_feature.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String email,
    required String userProfilePhoto,
    required DateTime birthday,
    required String displayName,
    required List<String> roles,
    required String phone,
    required String password,
  }) = _UserDto;
}
