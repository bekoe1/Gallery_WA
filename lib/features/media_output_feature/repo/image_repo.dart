part of '../media_output_module.dart';

abstract class ImageRepo {
  Future<void> getImageData({
    required int page,
    required int imagesPerPage,
  });
}
