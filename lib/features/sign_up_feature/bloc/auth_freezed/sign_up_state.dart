part of 'sign_up_bloc.dart';

enum SignUpStates {
  initial,
  signUpDone,
  requestError,
  loading,
}

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(SignUpStates.initial) SignUpStates currentState,
    @Default(null) String? requestError,
    @Default({}) Map<FieldTypesEnum, FieldErrorEnum> validationError,
  }) = _SignUpState;
}
