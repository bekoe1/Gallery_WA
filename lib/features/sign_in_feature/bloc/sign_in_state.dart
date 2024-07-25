part of "../sign_in_module.dart";

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    @Default(BlocStatesEnum.initial) BlocStatesEnum currentState,
    @Default(null) String? requestError,
    @Default({}) Map<FieldTypesEnum, FieldErrorEnum> validationError,
  }) = _SignInState;
}
