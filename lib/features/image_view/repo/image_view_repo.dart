part of '../image_view_module.dart';

abstract class ImageViewRepo {
  Future<ImageGetByIdModel> getImageById({required int id});
}
