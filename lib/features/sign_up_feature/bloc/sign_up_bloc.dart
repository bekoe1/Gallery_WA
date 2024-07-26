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
        ...ValidationHelper.validatePhoneNumber(event.phone),
      };
      if (errors.isNotEmpty) {
        return emit(
          state.copyWith(
            validationError: errors,
            status: BlocStatesEnum.validationError,
          ),
        );
      }
      final date = DateTime.parse(event.birthday);
      final requestDto = RequestUserSignUpDto(
        email: event.email,
        birthday: date,
        displayName: event.username,
        password: event.password,
        phone: event.phone,
      );

      final response = await signUpRepo.createNewUser(dto: requestDto);
      if (response != null) {
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
      final String errorText;
      if (e.response?.statusCode == 400) {
        errorText = e.response!.data[AppConstants.responseDescription].toString();
      } else {
        errorText = e.response?.data;
      }
      emit(
        state.copyWith(
          status: BlocStatesEnum.requestError,
          requestError: errorText,
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
