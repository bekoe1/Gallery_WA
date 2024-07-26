part of "../sign_in_module.dart";

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInRepo signInRepo;
  final UserTokenRepo tokenRepo;

  SignInBloc({required this.signInRepo, required this.tokenRepo}) : super(const SignInState()) {
    on<_SignIn>(_onSignInPressed);
  }

  FutureOr<void> _onSignInPressed(_SignIn event, Emitter<SignInState> emit) async {
    emit(
      state.copyWith(
        validationError: {},
        status: BlocStatesEnum.loading,
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
          status: BlocStatesEnum.validationError,
        ),
      );
    }
    try {
      final tokenModel = await signInRepo.signIn(
        email: event.email,
        password: event.password,
      );

      if (tokenModel != null) {
        tokenRepo.saveTokens(tokenModel);
        emit(
          state.copyWith(status: BlocStatesEnum.success),
        );
      } else {
        emit(
          state.copyWith(status: BlocStatesEnum.requestError),
        );
      }
    } on ApiExceptions catch (e) {
      emit(
        state.copyWith(
          status: BlocStatesEnum.requestError,
          requestError: e.message,
        ),
      );
    } on DioException catch (e) {
      emit(
        state.copyWith(
          status: BlocStatesEnum.requestError,
          requestError: e.response?.data.toString(),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: BlocStatesEnum.requestError,
          requestError: e.toString(),
        ),
      );
    }
  }
}
