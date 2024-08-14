part of 'extensions_module.dart';

extension ShimmerExtension on Shimmer {
  static Shimmer baseShimmer({required Widget child}) {
    return Shimmer.fromColors(
      baseColor: UiKitColors.grayLight,
      highlightColor: UiKitColors.white,
      child: child,
    );
  }
}
