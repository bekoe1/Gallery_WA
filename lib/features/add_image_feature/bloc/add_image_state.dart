part of '../add_image_module.dart';

@freezed
class AddImageState with _$AddImageState {
  const factory AddImageState.initial({
    @Default([]) List<FilesModel> images,
    @Default(false) bool reachedEnd,
    @Default(true) bool firstFetch,
    @Default("") String token,
    @Default("") String requestError,
    @Default(BlocStatesEnum.initial) BlocStatesEnum status,
  }) = _Initial;
}
