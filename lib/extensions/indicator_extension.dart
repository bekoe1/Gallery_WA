part of 'extensions_module.dart';

extension AppIndicator on CircularProgressIndicator {
  static Widget appIndicator(Color color) {
    return CircularProgressIndicator(
      strokeWidth: 1.5,
      color: color,
    );
  }
}
