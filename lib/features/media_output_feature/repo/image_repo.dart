part of '../media_output_module.dart';

abstract class ImageRepo {
  Future<List<ImageElementModel>> getImageData({
    required int page,
    required bool popular,
    required int imagesPerPage,
    required int limit,
  });
}
