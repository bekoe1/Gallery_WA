part of '../add_image_module.dart';

abstract class AddImageRepo {
  Future<List<FilesModel>> getFiles({required int page});
}
