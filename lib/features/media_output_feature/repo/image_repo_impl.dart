part of '../media_output_module.dart';

class ImageRepoImpl implements ImageRepo {
  final ImageDataProvider imageDataProvider;

  ImageRepoImpl({
    required this.imageDataProvider,
  });

  @override
  Future<List<ImageElementModel>> getImageData({
    required int page,
    required int imagesPerPage,
    required bool popular,
    required int limit,
    String? search,
  }) async {
    final response = await imageDataProvider.getImageData(
      limit: limit,
      page: page,
      popularPics: popular,
      newPics: !popular,
      search: search,
      itemsPerPage: imagesPerPage,
    );
    final images = response.data.toList();
    return images.map((e) => (e.toModel())).toList();
  }
}
