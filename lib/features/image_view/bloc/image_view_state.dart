part of '../image_view_module.dart';

@freezed
class ImageViewState with _$ImageViewState {
  const factory ImageViewState.initial({
    @Default(BlocStatesEnum.initial) BlocStatesEnum status,
    int? id,
    String? imageUrl,
    String? userName,
    String? imageName,
    DateTime? creatingDate,
    String? description,
    String? requestError,
    String? token,
  }) = _Initial;
}
