part of 'extensions_module.dart';

extension AppRefreshIndicator on RefreshIndicator {
  static Widget appRefreshIndicator({
    required Future<void> Function() onRefresh,
    required Widget child,
  }) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      strokeWidth: 1.67,
      color: UiKitColors.gray,
      child: child,
    );
  }
}
