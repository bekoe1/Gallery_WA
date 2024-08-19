part of '../add_image_module.dart';

@freezed
class AddImageState with _$AddImageState {
  const factory AddImageState.initial({
    Uint8List? image,
    @Default(false) bool popularImage,
    @Default(BlocStatesEnum.initial) BlocStatesEnum status,
    String? requestError,
    @Default({}) Map<FieldTypesEnum, FieldErrorEnum> validationError,
  }) = _Initial;
}
