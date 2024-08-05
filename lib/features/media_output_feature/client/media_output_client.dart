part of '../media_output_module.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class MediaOutputClient {
  factory MediaOutputClient(
    Dio dio, {
    String? baseUrl,
  }) = _MediaOutputClient;

  @GET(AppConstants.getImagesEndPoint)
  Future<OutputPhotosDtoWrapper<ImageElementDto>> getImageData({
    @Header(AppConstants.authorizationHeader) required String accessToken,
    @Query(AppConstants.pageQuery) required int page,
    @Query(AppConstants.popularQuery) bool? popularPics,
    @Query(AppConstants.newQuery) bool? newPics,
    @Query(AppConstants.limit) required int limit,
    @Query(AppConstants.itemsPerPageQuery) required int itemsPerPage,
  });
}
