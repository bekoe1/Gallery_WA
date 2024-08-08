part of '../media_output_module.dart';

@freezed
class MediaOutputState with _$MediaOutputState {
  const factory MediaOutputState.initial({
    String? requestError,
    @Default([]) List<ImageElementModel> images,
    @Default(false) bool reachedEnd,
    @Default(true) bool firstFetch,
    @Default(AppConstants.empty) String search,
    @Default("") String token,
    @Default(BlocStatesEnum.initial) BlocStatesEnum status,
  }) = _Initial;
}
