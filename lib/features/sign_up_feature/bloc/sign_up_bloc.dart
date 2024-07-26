part of "../sign_up_module.dart";

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpRepo signUpRepo;

  SignUpBloc(this.signUpRepo) : super(const _SignUpState()) {
    on<_SignUp>(_onSignUpPressed);
  }

  FutureOr<void> _onSignUpPressed(_SignUp event, Emitter<SignUpState> emit) async {
    try {
      emit(
        state.copyWith(
          status: BlocStatesEnum.loading,
          validationError: {},
          requestError: null,
        ),
      );
      final errors = {
        ...ValidationHelper.validateEmail(event.email),
        ...ValidationHelper.validateBirthday(event.birthday),
        ...ValidationHelper.validateConfirmedPas(event.password, event.confirmedPas),
        ...ValidationHelper.validatePassword(event.password),
        ...ValidationHelper.validateUsername(event.username),
      };
      if (errors.isNotEmpty) {
        return emit(
          state.copyWith(
            validationError: errors,
            status: BlocStatesEnum.validationError,
          ),
        );
      }
      int nextInt(int min, int max) => min + Random().nextInt((max + 1) - min);
      final date = DateTime.parse(event.birthday);
      final requestDto = RequestUserSignUpDto(
        email: event.email,
        birthday: date,
        displayName: event.username,
        password: event.password,
        phone: nextInt(100, 1000).toString(),
      );

      final response = await signUpRepo.createNewUser(dto: requestDto);
      if (response == null) {
        emit(
          state.copyWith(
            status: BlocStatesEnum.success,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: BlocStatesEnum.requestError,
          ),
        );
      }
    } on DioException catch (e) {
      emit(
        state.copyWith(
          status: BlocStatesEnum.requestError,
          requestError: e.response?.data[AppConstants.responseDescription].toString() ?? AppConstants.someError,
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
