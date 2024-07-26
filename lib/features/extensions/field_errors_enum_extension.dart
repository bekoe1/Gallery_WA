part of 'features_extensions_module.dart';

extension FieldErrorExtension on FieldErrorEnum {
  String currentError(BuildContext context) {
    switch (this) {
      case FieldErrorEnum.incorrectUsername:
        return context.localization.incorrectUsername;
      case FieldErrorEnum.emptyUsername:
        return context.localization.emptyUsername;
      case FieldErrorEnum.incorrectBirthday:
        return context.localization.incorrectBirthday;
      case FieldErrorEnum.passwordsAreNotEqual:
        return context.localization.passwordsAreNotEqual;
      case FieldErrorEnum.shortPas:
        return context.localization.shortPas;
      case FieldErrorEnum.emptyPas:
        return context.localization.emptyPas;
      case FieldErrorEnum.emptyEmail:
        return context.localization.emptyEmail;
      case FieldErrorEnum.incorrectEmail:
        return context.localization.incorrectEmail;
      case FieldErrorEnum.emptyData:
        return context.localization.emptyDate;
      case FieldErrorEnum.tooYoungUser:
        return context.localization.userIsTooYoung;
    }
  }
}
