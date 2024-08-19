part of 'helpers_module.dart';

class XfilesHelper {
  static Future<Uint8List> convertToFile(XFile xFile) => File(xFile.path).readAsBytes();
}
