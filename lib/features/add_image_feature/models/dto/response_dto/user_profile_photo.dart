part of '../../../add_image_module.dart';

@freezed
class UserProfilePhotoDto with _$UserProfilePhotoDto {
  const factory UserProfilePhotoDto({
    @JsonKey(name: "@context") required String context,
    @JsonKey(name: "@id") required String id,
    @JsonKey(name: "@type") required String type,
    @JsonKey(name: "id") required int userProfilePhotoId,
    required DateTime dateCreate,
    required DateTime dateUpdate,
    DateTime? deleted,
  }) = _UserProfilePhotoDto;

  factory UserProfilePhotoDto.fromJson(Map<String, dynamic> json) => _$UserProfilePhotoDtoFromJson(json);

  const UserProfilePhotoDto._();

  UserProfilePhotoModel toModel() {
    return UserProfilePhotoModel(
      context: context,
      id: id,
      type: type,
      userProfilePhotoId: userProfilePhotoId,
      dateCreate: dateCreate,
      dateUpdate: dateUpdate,
      deleted: deleted,
    );
  }
}
