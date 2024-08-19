part of '../../add_image_module.dart';

@freezed
class UserProfilePhotoModel with _$UserProfilePhotoModel {
  const factory UserProfilePhotoModel({
    required String context,
    required String id,
    required String type,
    required int userProfilePhotoId,
    required DateTime dateCreate,
    required DateTime dateUpdate,
    DateTime? deleted,
  }) = _UserProfilePhotoModel;
}
