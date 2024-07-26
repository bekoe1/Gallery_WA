import 'package:imagegalery/code_kit/resources/enums.dart';

class ValidationHelper {
  static Map<FieldTypesEnum, FieldErrorEnum> validateEmail(String email) {
    String pattern = r'^[^@]+@[^@]+\.[^@]+$';
    RegExp regex = RegExp(pattern);

    if (email.isEmpty) {
      return {FieldTypesEnum.emailField: FieldErrorEnum.emptyEmail};
    } else if (!regex.hasMatch(email)) {
      return {
        FieldTypesEnum.emailField: FieldErrorEnum.incorrectEmail,
      };
    }
    return {};
  }

  static Map<FieldTypesEnum, FieldErrorEnum> validatePassword(String value) {
    if (value.isEmpty) {
      return {
        FieldTypesEnum.passwordField: FieldErrorEnum.emptyPas,
      };
    } else if (value.length < 6) {
      return {
        FieldTypesEnum.passwordField: FieldErrorEnum.shortPas,
      };
    }
    return {};
  }

  static Map<FieldTypesEnum, FieldErrorEnum> validateUsername(String value) {
    if (value.isEmpty) {
      return {
        FieldTypesEnum.usernameField: FieldErrorEnum.emptyUsername,
      };
    } else if (value.length < 6) {
      return {
        FieldTypesEnum.usernameField: FieldErrorEnum.incorrectUsername,
      };
    }
    return {};
  }

  static Map<FieldTypesEnum, FieldErrorEnum> validateConfirmedPas(String pas1, String pas2) {
    if (pas1 != pas2) {
      return {
        FieldTypesEnum.confirmPasField: FieldErrorEnum.passwordsAreNotEqual,
      };
    } else {
      return {};
    }
  }

  static Map<FieldTypesEnum, FieldErrorEnum> validateBirthday(String date) {
    if (date.isEmpty) {
      return {
        FieldTypesEnum.birthdayField: FieldErrorEnum.emptyData,
      };
    }

    final value = DateTime.parse(date);

    DateTime currentDate = DateTime.now();
    DateTime minDate = DateTime(
      currentDate.year - 10,
      currentDate.month,
      currentDate.day,
    );

    if (value.isAfter(minDate)) {
      return {
        FieldTypesEnum.birthdayField: FieldErrorEnum.tooYoungUser,
      };
    }
    return {};
  }
}
