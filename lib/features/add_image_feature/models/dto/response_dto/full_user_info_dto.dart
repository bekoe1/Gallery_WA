part of '../../../add_image_module.dart';

@freezed
class FullUserInfoDto with _$FullUserInfoDto {
  const factory FullUserInfoDto({
    @JsonKey(name: "@context") required String context,
    @JsonKey(name: "@id") required String id,
    @JsonKey(name: "@type") required String type,
    required String email,
    UserProfilePhotoDto? userProfilePhoto,
    required DateTime birthday,
    required String displayName,
    required List<String> roles,
    required String phone,
    @JsonKey(name: "id") required int userInfoDtoId,
    required DateTime dateCreate,
    required DateTime dateUpdate,
    DateTime? deleted,
  }) = _FullUserInfoDto;

  factory FullUserInfoDto.fromJson(Map<String, dynamic> json) => _$FullUserInfoDtoFromJson(json);

  const FullUserInfoDto._();

  FullUserInfoModel toModel() {
    return FullUserInfoModel(
      context: context,
      id: id,
      type: type,
      email: email,
      userProfilePhoto: userProfilePhoto?.toModel(),
      birthday: birthday,
      displayName: displayName,
      phone: phone,
      userInfoDtoId: userInfoDtoId,
      dateCreate: dateCreate,
      dateUpdate: dateUpdate,
    );
  }
}
