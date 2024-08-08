part of '../media_output_module.dart';

@RestApi()
abstract class ImageDataProvider {
  factory ImageDataProvider(
    Dio dio, {
    String? baseUrl,
  }) = _ImageDataProvider;

  @GET(AppConstants.getImagesEndPoint)
  Future<OutputPhotosDtoWrapper<ImageElementDto>> getImageData({
    @Query(AppConstants.pageQuery) required int page,
    @Query(AppConstants.popularQuery) bool? popularPics,
    @Query(AppConstants.newQuery) bool? newPics,
    @Query(AppConstants.limit) required int limit,
    @Query(AppConstants.searchImageQuery) String? search,
    @Query(AppConstants.itemsPerPageQuery) required int itemsPerPage,
  });
}
