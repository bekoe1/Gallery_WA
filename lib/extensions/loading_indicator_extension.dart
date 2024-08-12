part of 'extensions_module.dart';

extension AppLoadingIndicator on CircularProgressIndicator {
  static Widget appLoadingIndicator(Color color) {
    return CircularProgressIndicator(
      strokeWidth: 1.67,
      color: color,
    );
  }
}
