part of '../add_image_module.dart';

class AddImageRepoImpl implements AddImageRepo {
  final AddImageDataProvider dataProvider;

  AddImageRepoImpl({required this.dataProvider});

  @override
  Future<FilesModel> createFile({required File file, required String name}) async {
    final response = await dataProvider.createFile(file: file, name: name);
    return response.toModel();
  }

  @override
  Future<void> createImage({required RequestImageCreationDto imageDto}) async {
    await dataProvider.createImage(imageDto: imageDto);
  }

  @override
  Future<FullUserInfoModel> getCurrentUserFullInfo() async {
    final info = await dataProvider.getCurrentUserFullInfo();
    return info.toModel();
  }
}
