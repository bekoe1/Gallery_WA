part of '../add_image_module.dart';

@RestApi()
abstract class AddImageDataProvider {
  factory AddImageDataProvider(
    Dio dio, {
    String? baseUrl,
  }) = _AddImageDataProvider;

  @POST("/files")
  Future<FileDto> createFile({
    @Part(name: "file") required File file,
    @Part(name: "originalName") required String name,
  });

  @POST("/photos")
  Future<ImageGetByIdDto> createImage({
    @Body() required RequestImageCreationDto imageDto,
  });

  @GET("/current")
  Future<FullUserInfoDto> getCurrentUserFullInfo();
}
