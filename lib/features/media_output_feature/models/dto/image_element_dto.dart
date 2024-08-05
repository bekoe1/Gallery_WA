part of '../../media_output_module.dart';

@freezed
class ImageElementDto with _$ImageElementDto {
  const factory ImageElementDto({
    int? id,
    String? type,
    ImageDataDto? file,
    bool? hydraMemberNew,
    bool? popular,
    int? hydraMemberId,
  }) = _ImageElementDto;

  factory ImageElementDto.fromJson(Map<String, dynamic> json) => _$ImageElementDtoFromJson(json);

  const ImageElementDto._();

  ImageElementModel toModel() => ImageElementModel(
        id: id,
        type: type,
        file: file?.toModel(),
        hydraMemberNew: hydraMemberNew,
        popular: popular,
        hydraMemberId: hydraMemberId,
      );
}
