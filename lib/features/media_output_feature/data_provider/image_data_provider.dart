part of '../media_output_module.dart';

class ImageDataProvider implements ImageRepo {
  final Dio dio;

  ImageDataProvider({required this.dio});

  @override
  Future<void> getImageData({required int page, required int imagesPerPage}) async {
    final TokenModel? token =
        await UserTokenProvider(storage: getIt<FlutterSecureStorage>(), dio: getIt<Dio>()).getTokenFromStorage();
    final response = await dio.get(
      "${AppConstants.baseUrl}${AppConstants.getImagesEndPoint}",
      options: Options(
        contentType: AppConstants.contentType,
        headers: {
          AppConstants.authorizationHeader: "Bearer ${token?.accessToken}",
        },
      ),
    );
  }
}
