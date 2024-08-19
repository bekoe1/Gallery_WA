part of '../add_image_module.dart';

@freezed
class AddImageEvent with _$AddImageEvent {
  const factory AddImageEvent.pickImage({
    required ImageSource imageSource,
  }) = _PickImage;

  const factory AddImageEvent.resetImage() = _ResetImage;
  const factory AddImageEvent.addImage({
    required String description,
    required String name,
    @Default(false) bool newImage,
    @Default(false) bool popularImage,
    Uint8List? image,
  }) = _AddImage;
}
