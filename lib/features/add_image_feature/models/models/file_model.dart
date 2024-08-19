part of '../../add_image_module.dart';

class FilesModel {
  final String id;
  final String type;
  final String? originalName;
  final String? path;
  final String? fullPath;
  final String? mimeType;
  final int? filesModelId;
  final DateTime dateCreate;
  final DateTime? dateUpdate;

  FilesModel({
    required this.id,
    required this.type,
    required this.originalName,
    required this.path,
    required this.fullPath,
    required this.mimeType,
    required this.filesModelId,
    required this.dateCreate,
    required this.dateUpdate,
  });
}
