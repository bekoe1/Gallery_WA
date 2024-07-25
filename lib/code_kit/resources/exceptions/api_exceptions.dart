import 'package:dio/dio.dart';
import 'package:imagegalery/code_kit/resources/enums.dart';
import 'package:imagegalery/features/extensions/api_errors_extension.dart';

class ApiExceptions extends DioException implements Exception {
  final ApiExceptionTypes exceptionType;

  ApiExceptions({
    required super.requestOptions,
    required this.exceptionType,
  }) : super(message: exceptionType.message());
}
