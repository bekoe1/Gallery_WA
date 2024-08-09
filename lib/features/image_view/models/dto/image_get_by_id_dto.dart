part of '../../image_view_module.dart';

@freezed
class ImageGetByIdDto with _$ImageGetByIdDto {
  const factory ImageGetByIdDto({
    @JsonKey(name: "@context") String? context,
    @JsonKey(name: "@id") String? id,
    @JsonKey(name: "@type") String? type,
    ImageDataDto? file,
    UserInformationDto? user,
    String? description,
    String? name,
    @JsonKey(name: "new") bool? newImages,
    @JsonKey(name: "popular") bool? popularImages,
    @JsonKey(name: "id") int? imageId,
    DateTime? dateCreate,
    DateTime? dateUpdate,
  }) = _ImageGetByIdDto;

  factory ImageGetByIdDto.fromJson(Map<String, dynamic> json) => _$ImageGetByIdDtoFromJson(json);

  const ImageGetByIdDto._();

  ImageGetByIdModel toModel() {
    return ImageGetByIdModel(
      context: context,
      id: id,
      type: type,
      file: file?.toModel(),
      user: user,
      description: description,
      name: name,
      newImages: newImages,
      popularImages: popularImages,
      imageId: imageId,
      dateCreate: dateCreate,
      dateUpdate: dateUpdate,
    );
  }
}
