part of '../../media_output_module.dart';

@freezed
class ImageDataModel with _$ImageDataModel {
  const factory ImageDataModel({
    required int id,
    required String? type,
    required String path,
    required int? fileId,
  }) = _ImageDataModel;
}
