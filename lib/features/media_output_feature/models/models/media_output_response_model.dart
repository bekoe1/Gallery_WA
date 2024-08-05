part of '../../media_output_module.dart';

@freezed
class MediaOutputResponseModel<T> with _$MediaOutputResponseModel<T> {
  const factory MediaOutputResponseModel({
    required int totalItems,
    required List<T> data,
    required HydraViewDto hydraView,
  }) = _MediaOutputResponseModel;
}
