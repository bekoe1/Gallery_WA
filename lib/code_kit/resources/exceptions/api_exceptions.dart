import 'package:dio/dio.dart';

class ApiExceptions extends DioException implements Exception {
  final String errorMessage;

  ApiExceptions({
    required super.requestOptions,
    required this.errorMessage,
  }) : super(message: errorMessage);
}
