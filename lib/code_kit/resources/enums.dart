enum FieldTypesEnum {
  emailField,
  passwordField,
  usernameField,
  birthdayField,
  confirmPasField,
}

enum FieldErrorEnum {
  emptyPas,
  emptyEmail,
  emptyData,
  incorrectEmail,
  emptyUsername,
  incorrectUsername,
  passwordsAreNotEqual,
  shortPas,
  incorrectBirthday,
}

enum BlocStatesEnum {
  initial,
  success,
  loading,
  loaded,
  error,
  validationError,
  requestError,
}

enum ApiExceptionTypes {
  lostConnection,
  tokenExpired,
}
