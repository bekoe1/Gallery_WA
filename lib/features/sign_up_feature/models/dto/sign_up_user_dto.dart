part of '../../sign_up_module.dart';

@freezed
class ResponseUserDto with _$ResponseUserDto {
  const factory ResponseUserDto({
    required DateTime birthday,
    required String email,
    required String displayName,
    required List<String> roles,
    required String phone,
  }) = _ResponseUserDto;

  factory ResponseUserDto.fromJson(Map<String, dynamic> json) => _$ResponseUserDtoFromJson(json);

  const ResponseUserDto._();

  UserModel? toModel() => UserModel(
        email: email,
        displayName: displayName,
        birthday: birthday,
        phone: phone,
        roles: roles,
      );
}
