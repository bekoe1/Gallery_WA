part of '../add_image_module.dart';

@RestApi()
abstract class AddImageDataProvider {
  factory AddImageDataProvider(
    Dio dio, {
    String? baseUrl,
  }) = _AddImageDataProvider;

  @GET("/files")
  Future<OutputPhotosDtoWrapper<FileDto>> getFiles({
    @Query(AppConstants.itemsPerPageQuery) required int filesPerPage,
    @Query(AppConstants.pageQuery) required int page,
  });
}
