part of '../../add_image_module.dart';

@freezed
class FileDto with _$FileDto {
  const factory FileDto({
    @JsonKey(name: "@context") String? context,
    @JsonKey(name: "@id") required String id,
    @JsonKey(name: "@type") required String type,
    String? originalName,
    String? path,
    String? fullPath,
    String? mimeType,
    @JsonKey(name: "id") int? getFilesDtoId,
    required DateTime dateCreate,
    DateTime? dateUpdate,
    DateTime? deleted,
  }) = _FileDto;

  factory FileDto.fromJson(Map<String, dynamic> json) => _$FileDtoFromJson(json);

  const FileDto._();

  FilesModel toModel() {
    return FilesModel(
      type: type,
      id: id,
      originalName: originalName,
      path: path,
      fullPath: fullPath,
      mimeType: mimeType,
      filesModelId: getFilesDtoId,
      dateCreate: dateCreate,
      dateUpdate: dateUpdate,
    );
  }
}
