part of 'sign_in_bloc.dart';

enum SignInStates {
  initial,
  loading,
  requestError,
  signInDone,
}

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    @Default(SignInStates.initial) SignInStates currentState,
    @Default(null) String? requestError,
    @Default({}) Map<FieldTypesEnum, FieldErrorEnum> validationError,
  }) = _SignInState;
}
