part of '../../media_output_module.dart';

@freezed
class HydraViewDto with _$HydraViewDto {
  const factory HydraViewDto({
    @JsonKey(name: "@id") required String id,
    @JsonKey(name: "@type") required String type,
    @JsonKey(name: "hydra:first") String? hydraFirst,
    @JsonKey(name: "hydra:last") String? hydraLast,
    @JsonKey(name: "hydra:next") String? hydraNext,
  }) = _HydraView;

  factory HydraViewDto.fromJson(Map<String, dynamic> json) => _$HydraViewDtoFromJson(json);

  const HydraViewDto._();

  HydraViewModel toModel() {
    return HydraViewModel(
      id: id,
      type: type,
      hydraFirst: hydraFirst,
      hydraLast: hydraLast,
      hydraNext: hydraNext,
    );
  }
}
