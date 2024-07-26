// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "alreadyHaveAcc":
            MessageLookupByLibrary.simpleMessage("У меня уже есть аккаунт"),
        "cancel": MessageLookupByLibrary.simpleMessage("Отмена"),
        "createAccount":
            MessageLookupByLibrary.simpleMessage("Создать аккаунт"),
        "emptyDate":
            MessageLookupByLibrary.simpleMessage("дата не может быть пустой"),
        "emptyEmail": MessageLookupByLibrary.simpleMessage(
            "электронная почта не может быть пустой"),
        "emptyPas":
            MessageLookupByLibrary.simpleMessage("пароль не может быть пустым"),
        "emptyUsername": MessageLookupByLibrary.simpleMessage(
            "имя пользователя не может быть пустым"),
        "incorrectBirthday":
            MessageLookupByLibrary.simpleMessage("дата рождения некорректна"),
        "incorrectEmail": MessageLookupByLibrary.simpleMessage(
            "электронная почта некорректна"),
        "incorrectUsername": MessageLookupByLibrary.simpleMessage(
            "имя пользователя некорректно"),
        "loading": MessageLookupByLibrary.simpleMessage("Загрузка..."),
        "lostConnection": MessageLookupByLibrary.simpleMessage(
            "Вы не подключены к сети или у вас слабый интернет"),
        "passwordsAreNotEqual":
            MessageLookupByLibrary.simpleMessage("пароли не совпадают"),
        "shortPas":
            MessageLookupByLibrary.simpleMessage("пароль слишком короткий"),
        "shortUsername": MessageLookupByLibrary.simpleMessage(
            "имя пользователя не может быть меньше 6 символов"),
        "signIn": MessageLookupByLibrary.simpleMessage("Войти"),
        "signUp": MessageLookupByLibrary.simpleMessage("Зарегестрироваться"),
        "someError": MessageLookupByLibrary.simpleMessage("Возникла ошибка"),
        "successSignIn": MessageLookupByLibrary.simpleMessage(
            "Вы успешно зарегестрировались"),
        "tokenExpired": MessageLookupByLibrary.simpleMessage("Ваш токен истек"),
        "userIsTooYoung": MessageLookupByLibrary.simpleMessage(
            "Возрастные ограничения - не моложе 10 лет"),
        "welcomeText":
            MessageLookupByLibrary.simpleMessage("Добро пожаловать в галерею!")
      };
}