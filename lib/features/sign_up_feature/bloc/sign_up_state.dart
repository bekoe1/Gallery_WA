part of "../sign_up_module.dart";

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(BlocStatesEnum.initial) BlocStatesEnum status,
    String? requestError,
    @Default({}) Map<FieldTypesEnum, FieldErrorEnum> validationError,
  }) = _SignUpState;
}
