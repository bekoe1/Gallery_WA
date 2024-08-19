part of '../add_image_module.dart';

abstract class AddImageRepo {
  Future<FilesModel> createFile({required File file, required String name});

  Future<void> createImage({
    required RequestImageCreationDto imageDto,
  });

  Future<FullUserInfoModel> getCurrentUserFullInfo();
}
