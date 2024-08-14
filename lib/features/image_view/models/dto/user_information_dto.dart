part of '../../image_view_module.dart';

@freezed
class UserInformationDto with _$UserInformationDto {
  const factory UserInformationDto({
    @JsonKey(name: "@id") String? id,
    @JsonKey(name: "@type") String? type,
    String? displayName,
    @JsonKey(name: "id") int? userId,
    DateTime? dateCreate,
    DateTime? dateUpdate,
  }) = _UserInformationDto;

  factory UserInformationDto.fromJson(Map<String, dynamic> json) => _$UserInformationDtoFromJson(json);

  const UserInformationDto._();
}
