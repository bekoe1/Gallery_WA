part of '../image_view_module.dart';

@freezed
class ImageViewEvent with _$ImageViewEvent {
  const factory ImageViewEvent.started() = _Started;

  const factory ImageViewEvent.fetchData({
    required int id,
  }) = _FetchData;
}
