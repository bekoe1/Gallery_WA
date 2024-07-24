import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imagegalery/features/onboarding_feature/repo/user_token_repo.dart';

part 'onboarding_bloc.freezed.dart';
part 'onboarding_event.dart';
part 'onboarding_state.dart';

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
          currentState: OnboardingStates.tokenDoesNotExist,
        ),
      );
    } else {
      emit(
        state.copyWith(
          currentState: OnboardingStates.tokenExistsState,
        ),
      );
    }
  }
}
