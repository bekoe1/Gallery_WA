enum FieldTypesEnum {
  emailField,
  passwordField,
  usernameField,
  birthdayField,
  confirmPasField,
  phoneField,
  nameField,
  descriptionField,
}

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
  emptyName,
  emptyDescription,
  incorrectName,
}

enum BlocStatesEnum {
  initial,
  success,
  loading,
  loaded,
  error,
  noImage,
  initialLoading,
  validationError,
  requestError,
}
