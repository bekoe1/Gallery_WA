part of '../media_output_module.dart';

@freezed
class MediaOutputEvent with _$MediaOutputEvent {
  const factory MediaOutputEvent.started() = _Started;
  const factory MediaOutputEvent.fetchData({
    required bool popularImages,
    @Default(false) bool isRefreshing,
    required String searchName,
  }) = _FetchData;
}
