part of '../image_view_module.dart';

@RestApi()
abstract class ImageViewDataProvider {
  factory ImageViewDataProvider(
    Dio dio, {
    String? baseUrl,
  }) = _ImageViewDataProvider;

  @GET(AppConstants.getImagesByIdEndPoint)
  Future<ImageGetByIdDto> getImageById({
    @Path(AppConstants.id) required int id,
  });
}
