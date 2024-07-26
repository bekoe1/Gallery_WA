part of 'interceptors_module.dart';

class AppInterceptor extends Interceptor {
  final UserTokenRepo tokenRepo;

  // TODO: Вынести в Helper
  Future<bool> _hasNetwork() async {
    try {
      final foo = await InternetAddress.lookup('google.com');
      return foo.isNotEmpty && foo[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  Future<TokenModel?> _refreshToken() async {
    await tokenRepo.deleteAccessToken();
    final newToken = await tokenRepo.refreshAccessToken();
    return newToken;
  }

  AppInterceptor({required this.tokenRepo});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final connectedToNetwork = await _hasNetwork();

    if (connectedToNetwork) {
      final token = await tokenRepo.getTokenFromStorage();

      if (token?.accessToken != null) {
        options.headers['Authorization'] = "Bearer ${token?.accessToken}";
      }

      return handler.next(options);
    } else {
      return handler.reject(
        ApiExceptions(
          requestOptions: options,
          errorMessage: AppConstants.lostConnection,
        ),
      );
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final options = RequestOptions(
      baseUrl: AppConstants.baseUrl,
    );

    switch (err.response?.statusCode) {
      case 401:
        try {
          log("401 --  ${err.response.toString()}");
          final newToken = await _refreshToken();
          options.headers['Authorization'] = "Bearer ${newToken?.accessToken}";
          final request = await Dio().fetch(options);

          return handler.resolve(request);
        } on DioException catch (e) {
          return handler.reject(
            ApiExceptions(
              requestOptions: options,
              errorMessage: AppConstants.tokenExpired,
            ),
          );
        }
      case 400:
        log("400 --  ${err.response.toString()}");

        final responseData = err.response!.data;
        final error = responseData['error'];
        if (error == "invalid_grant") {
          return handler.reject(
            ApiExceptions(
              requestOptions: options,
              errorMessage: responseData["message"].toString(),
            ),
          );
        }
    }
    return handler.next(err);
  }
}
