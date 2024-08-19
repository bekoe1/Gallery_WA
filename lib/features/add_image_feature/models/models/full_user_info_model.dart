part of '../../add_image_module.dart';

@freezed
class FullUserInfoModel with _$FullUserInfoModel {
  const factory FullUserInfoModel({
    required String context,
    required String id,
    required String type,
    required String email,
    UserProfilePhotoModel? userProfilePhoto,
    required DateTime birthday,
    required String displayName,
    List<String>? roles,
    required String phone,
    required int userInfoDtoId,
    required DateTime dateCreate,
    required DateTime dateUpdate,
    DateTime? deleted,
  }) = _FullUserInfoModel;
}
