part of '../image_view_module.dart';

class ImageViewRepoImpl implements ImageViewRepo {
  final ImageViewDataProvider imageViewDataProvider;

  ImageViewRepoImpl({required this.imageViewDataProvider});

  @override
  Future<ImageGetByIdModel> getImageById({required int id}) async {
    final response = await imageViewDataProvider.getImageById(id: id);
    return response.toModel();
  }
}
