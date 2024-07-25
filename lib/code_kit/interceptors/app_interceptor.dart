part of 'interceptors_module.dart';

class AppInterceptor extends Interceptor {
  final UserTokenRepo tokenRepo;
  final options = RequestOptions(
    baseUrl: ApiConstants.baseUrl,
  );

  Future<bool> _hasNetwork() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  AppInterceptor({required this.tokenRepo});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    super.onRequest(options, handler);
    final connectedToNetwork = await _hasNetwork();
    if (connectedToNetwork) {
      final token = await tokenRepo.getTokenFromStorage();
      options.headers['Authorization'] = "Bearer ${token?.accessToken}";
      handler.next(options);
    } else {
      return handler.reject(
        ApiExceptions(
          requestOptions: options,
          exceptionType: ApiExceptionTypes.lostConnection,
        ),
      );
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    switch (err.response?.statusCode) {
      case (401):
        try {
          await tokenRepo.deleteAccessToken();
          final newToken = await tokenRepo.refreshAccessToken();
          options.headers['Authorization'] = "Bearer ${newToken?.accessToken}";
          final request = await Dio().fetch(options);

          return handler.resolve(request);
        } on DioException catch (e) {
          return handler.reject(
            ApiExceptions(
              requestOptions: options,
              exceptionType: ApiExceptionTypes.tokenExpired,
            ),
          );
        }
    }
  }
}
