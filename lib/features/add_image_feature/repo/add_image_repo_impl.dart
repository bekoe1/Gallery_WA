part of '../add_image_module.dart';

class AddImageRepoImpl implements AddImageRepo {
  final AddImageDataProvider dataProvider;

  AddImageRepoImpl({required this.dataProvider});

  @override
  Future<List<FilesModel>> getFiles({required int page}) async {
    final response = await dataProvider.getFiles(filesPerPage: AppConstants.filesLimit, page: page);

    final files = response.data.map((e) => e.toModel()).toList();
    return files;
  }
}
