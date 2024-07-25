part of '../../sign_up_module.dart';

@freezed
class SignUpUserDto with _$SignUpUserDto {
  const factory SignUpUserDto({
    required String email,
    required String userProfilePhoto,
    required DateTime birthday,
    required String displayName,
    required List<String> roles,
    required String phone,
    required String password,
  }) = _SignUpUserDto;
}
