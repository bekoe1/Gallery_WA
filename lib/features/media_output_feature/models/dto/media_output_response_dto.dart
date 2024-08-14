part of '../../media_output_module.dart';

@Freezed(genericArgumentFactories: true)
class OutputPhotosDtoWrapper<T> with _$OutputPhotosDtoWrapper<T> {
  const factory OutputPhotosDtoWrapper({
    @JsonKey(name: "hydra:member") required List<T> data,
  }) = _OutputPhotosDtoWrapper;

  factory OutputPhotosDtoWrapper.fromJson(Map<String, dynamic> json, T Function(Object?) fromJson) =>
      _$OutputPhotosDtoWrapperFromJson(
        json,
        fromJson,
      );
}
