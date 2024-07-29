part of 'helpers_module.dart';

class InterceptorHelper {
  static Future<bool> hasNetwork() async {
    try {
      final foo = await InternetAddress.lookup('google.com');
      return foo.isNotEmpty && foo[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }
}
