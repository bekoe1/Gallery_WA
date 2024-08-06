part of '../media_output_module.dart';

class ImageDataProvider implements ImageRepo {
  final MediaOutputClient mediaOutputClient;
  final tokenRepo = getIt<UserTokenRepo>();

  ImageDataProvider({required this.mediaOutputClient});

  @override
  Future<List<ImageElementModel>> getImageData({
    required int page,
    required int imagesPerPage,
    required bool popular,
    required int limit,
    String? search,
  }) async {
    try {
      final TokenModel? token = await tokenRepo.getTokenFromStorage();
      final response = await mediaOutputClient.getImageData(
        limit: limit,
        accessToken: "${AppConstants.bearerToken} ${token?.accessToken}",
        page: page,
        popularPics: popular,
        newPics: !popular,
        search: search,
        itemsPerPage: imagesPerPage,
      );
      final images = response.data.toList();
      final List<ImageElementDto> dtoImages = images
          .map(
            (e) => (ImageElementDto.fromJson(e)),
          )
          .toList();
      return dtoImages
          .map(
            (e) => (e.toModel()),
          )
          .toList();
    } on DioException catch (e) {
      rethrow;
    }
  }
}
