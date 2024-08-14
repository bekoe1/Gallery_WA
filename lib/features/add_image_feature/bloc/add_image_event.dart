part of '../add_image_module.dart';

@freezed
class AddImageEvent with _$AddImageEvent {
  const factory AddImageEvent.started() = _Started;
  const factory AddImageEvent.fetchData({
    @Default(false) bool isRefreshing,
  }) = _FetchData;
}
