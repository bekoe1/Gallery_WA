part of '../../media_output_module.dart';

@freezed
class ImageElementModel with _$ImageElementModel {
  const factory ImageElementModel({
    int? id,
    String? type,
    ImageDataModel? file,
    bool? hydraMemberNew,
    bool? popular,
    int? hydraMemberId,
  }) = _ImageElementModel;
}
