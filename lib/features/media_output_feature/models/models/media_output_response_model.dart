part of '../../media_output_module.dart';

@Freezed(genericArgumentFactories: true)
class MediaOutputResponseModel<T> with _$MediaOutputResponseModel<T> {
  const factory MediaOutputResponseModel({
    required List<T> data,
  }) = _MediaOutputResponseModel;
}
