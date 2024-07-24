part of 'onboarding_bloc.dart';

enum OnboardingStates {
  initial,
  tokenExistsState,
  tokenDoesNotExist,
}

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    @Default(OnboardingStates.initial) OnboardingStates currentState,
  }) = _OnboardingState;
}
