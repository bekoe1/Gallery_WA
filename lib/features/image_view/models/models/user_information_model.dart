part of '../../image_view_module.dart';

class UserInformationModel {
  final String context;
  final String id;
  final String type;
  final String displayName;
  final int userId;
  final DateTime dateCreate;
  final DateTime dateUpdate;
  final DateTime deleted;

  UserInformationModel({
    required this.context,
    required this.id,
    required this.type,
    required this.displayName,
    required this.userId,
    required this.dateCreate,
    required this.dateUpdate,
    required this.deleted,
  });
}
