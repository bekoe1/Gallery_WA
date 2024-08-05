part of '../../media_output_module.dart';

@freezed
class OutputPhotosDtoWrapper<T> with _$OutputPhotosDtoWrapper<T> {
  const factory OutputPhotosDtoWrapper({
    @JsonKey(name: "hydra:totalItems") required int totalItems,
    @JsonKey(name: "hydra:member") required List<dynamic> data,
    @JsonKey(name: "hydra:view") required HydraViewDto hydraView,
  }) = _OutputPhotosDtoWrapper;

  factory OutputPhotosDtoWrapper.fromJson(Map<String, dynamic> json) => _$OutputPhotosDtoWrapperFromJson(json);
  const OutputPhotosDtoWrapper._();

  MediaOutputResponseModel toModel() {
    return MediaOutputResponseModel(
      totalItems: totalItems,
      data: data,
      hydraView: hydraView,
    );
  }
}
