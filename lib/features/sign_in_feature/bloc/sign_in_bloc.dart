part of "../sign_in_module.dart";

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInRepo _signInRepo;
  final UserTokenRepo _tokenRepo;

  SignInBloc(this._signInRepo, this._tokenRepo) : super(const SignInState()) {
    on<_SignIn>(_onSignInPressed);
  }

  FutureOr<void> _onSignInPressed(_SignIn event, Emitter<SignInState> emit) async {
    emit(
      state.copyWith(
        validationError: {},
        currentState: BlocStatesEnum.loading,
      ),
    );

    final errors = {
      ...ValidationHelper.validateEmail(event.email),
      ...ValidationHelper.validatePassword(event.password),
    };
    if (errors.isNotEmpty) {
      return emit(
        state.copyWith(
          validationError: errors,
          currentState: BlocStatesEnum.validationError,
        ),
      );
    }
    try {
      final tokenModel = await _signInRepo.signIn(
        email: event.email,
        password: event.password,
      );

      if (tokenModel != null) {
        _tokenRepo.saveTokens(tokenModel);
        emit(
          state.copyWith(currentState: BlocStatesEnum.success),
        );
      } else {
        emit(
          state.copyWith(currentState: BlocStatesEnum.requestError),
        );
      }
    } on ApiExceptions catch (e) {
      emit(
        state.copyWith(
          currentState: BlocStatesEnum.requestError,
          requestError: e.message,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          currentState: BlocStatesEnum.requestError,
          requestError: e.toString(),
        ),
      );
    }
  }
}
