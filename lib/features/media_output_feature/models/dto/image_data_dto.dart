part of '../../media_output_module.dart';

@freezed
class ImageDataDto with _$ImageDataDto {
  const factory ImageDataDto({
    required int id,
    required String? type,
    required String path,
    required int? fileId,
  }) = _ImageDataDtoDto;

  factory ImageDataDto.fromJson(Map<String, dynamic> json) => _$ImageDataDtoFromJson(json);

  const ImageDataDto._();

  ImageDataModel? toModel() => ImageDataModel(
        id: id,
        type: type,
        path: path,
        fileId: fileId,
      );
}
