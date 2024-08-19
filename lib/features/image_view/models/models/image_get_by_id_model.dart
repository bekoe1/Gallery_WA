part of '../../image_view_module.dart';

class ImageGetByIdModel {
  final String? context;
  final String? id;
  final String? type;
  final ImageDataModel? file;
  final UserInformationDto? user;
  final String? description;
  final String? name;
  final bool? newImages;
  final bool? popularImages;
  final int? imageId;
  final DateTime? dateCreate;
  final DateTime? dateUpdate;

  ImageGetByIdModel({
    required this.context,
    required this.id,
    required this.type,
    required this.file,
    required this.user,
    required this.description,
    required this.name,
    required this.newImages,
    required this.popularImages,
    required this.imageId,
    required this.dateCreate,
    required this.dateUpdate,
  });
}
