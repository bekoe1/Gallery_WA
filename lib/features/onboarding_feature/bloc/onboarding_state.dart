part of '../onboarding_feature_module.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    @Default(BlocStatesEnum.initial) BlocStatesEnum currentState,
  }) = _OnboardingState;
}
