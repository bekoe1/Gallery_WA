// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "alreadyHaveAcc":
            MessageLookupByLibrary.simpleMessage("I already have an account"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "createAccount":
            MessageLookupByLibrary.simpleMessage("Create an account"),
        "emptyDate":
            MessageLookupByLibrary.simpleMessage("date cannot be empty"),
        "emptyEmail":
            MessageLookupByLibrary.simpleMessage("email cannot be empty"),
        "emptyPas":
            MessageLookupByLibrary.simpleMessage("password cannot be empty"),
        "emptyUsername":
            MessageLookupByLibrary.simpleMessage("username cannot be empty"),
        "incorrectBirthday":
            MessageLookupByLibrary.simpleMessage("birthday is incorrect"),
        "incorrectEmail":
            MessageLookupByLibrary.simpleMessage("email is incorrect"),
        "incorrectPhone":
            MessageLookupByLibrary.simpleMessage("phone number is incorrect"),
        "incorrectUsername":
            MessageLookupByLibrary.simpleMessage("username is incorrect"),
        "loading": MessageLookupByLibrary.simpleMessage("Loading..."),
        "lostConnection": MessageLookupByLibrary.simpleMessage(
            "You are not connected to the network or your internet is weak"),
        "passwordsAreNotEqual":
            MessageLookupByLibrary.simpleMessage("passwords do not match"),
        "shortPas":
            MessageLookupByLibrary.simpleMessage("password is too short"),
        "shortUsername":
            MessageLookupByLibrary.simpleMessage("username is too short"),
        "signIn": MessageLookupByLibrary.simpleMessage("Sign In"),
        "signUp": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "someError": MessageLookupByLibrary.simpleMessage("Error occupied"),
        "successSignIn":
            MessageLookupByLibrary.simpleMessage("Sign in success"),
        "tokenExpired":
            MessageLookupByLibrary.simpleMessage("Your token expired"),
        "userIsTooYoung": MessageLookupByLibrary.simpleMessage(
            "Age restrictions - at least 10 years old"),
        "welcomeText":
            MessageLookupByLibrary.simpleMessage("Welcome to Gallery!")
      };
}
