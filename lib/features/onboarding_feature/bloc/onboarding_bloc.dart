part of '../onboarding_feature_module.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final UserTokenRepo tokenRepo;
  OnboardingBloc(this.tokenRepo) : super(const _OnboardingState()) {
    on<_CheckToken>(_onCheckTokenEvent);
  }

  _onCheckTokenEvent(_CheckToken event, Emitter<OnboardingState> emit) async {
    final tokenExists = await tokenRepo.getTokenFromStorage();
    if (tokenExists == null) {
      emit(
        state.copyWith(
          status: BlocStatesEnum.error,
        ),
      );
    } else {
      emit(
        state.copyWith(
          status: BlocStatesEnum.success,
        ),
      );
    }
  }
}
