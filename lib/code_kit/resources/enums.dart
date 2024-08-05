enum FieldTypesEnum { emailField, passwordField, usernameField, birthdayField, confirmPasField, phoneField }

enum FieldErrorEnum {
  tooYoungUser,
  emptyPas,
  emptyEmail,
  emptyData,
  incorrectEmail,
  emptyUsername,
  incorrectUsername,
  passwordsAreNotEqual,
  incorrectPhoneNumber,
  shortPas,
  incorrectBirthday,
}

enum BlocStatesEnum {
  initial,
  success,
  loading,
  loaded,
  error,
  initialLoading,
  noImages,
  validationError,
  requestError,
}
