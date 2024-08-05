part of '../../media_output_module.dart';

@freezed
class HydraViewModel with _$HydraViewModel {
  const factory HydraViewModel({
    required String id,
    required String type,
    String? hydraFirst,
    String? hydraLast,
    String? hydraNext,
  }) = _HydraViewModel;
}
