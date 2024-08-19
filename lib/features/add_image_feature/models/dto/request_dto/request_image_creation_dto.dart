part of '../../../add_image_module.dart';

@freezed
class RequestImageCreationDto with _$RequestImageCreationDto {
  const factory RequestImageCreationDto({
    required String file,
    required String user,
    required String description,
    required String name,
    @JsonKey(name: "new") required bool imageTypeNew,
    @JsonKey(name: "popular") required bool imageTypePopular,
  }) = _RequestImageCreationDto;

  factory RequestImageCreationDto.fromJson(Map<String, dynamic> json) => _$RequestImageCreationDtoFromJson(json);
}
