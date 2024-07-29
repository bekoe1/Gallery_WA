part of '../onboarding_feature_module.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.started() = _Started;
  const factory OnboardingEvent.checkToken() = _CheckToken;
}
