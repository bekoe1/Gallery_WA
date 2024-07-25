import 'package:imagegalery/code_kit/resources/constants/api_constants.dart';
import 'package:imagegalery/code_kit/resources/enums.dart';

extension ApiErrorsExtension on ApiExceptionTypes {
  message() {
    switch (ApiExceptionTypes) {
      case (ApiExceptionTypes.lostConnection):
        return ApiConstants.lostConnection;
      case (ApiExceptionTypes.tokenExpired):
        return ApiConstants.tokenExpired;
    }
  }
}
