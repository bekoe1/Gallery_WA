// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Loading...`
  String get loading {
    return Intl.message(
      'Loading...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `username is incorrect`
  String get incorrectUsername {
    return Intl.message(
      'username is incorrect',
      name: 'incorrectUsername',
      desc: '',
      args: [],
    );
  }

  /// `username cannot be empty`
  String get emptyUsername {
    return Intl.message(
      'username cannot be empty',
      name: 'emptyUsername',
      desc: '',
      args: [],
    );
  }

  /// `birthday is incorrect`
  String get incorrectBirthday {
    return Intl.message(
      'birthday is incorrect',
      name: 'incorrectBirthday',
      desc: '',
      args: [],
    );
  }

  /// `passwords do not match`
  String get passwordsAreNotEqual {
    return Intl.message(
      'passwords do not match',
      name: 'passwordsAreNotEqual',
      desc: '',
      args: [],
    );
  }

  /// `password is too short`
  String get shortPas {
    return Intl.message(
      'password is too short',
      name: 'shortPas',
      desc: '',
      args: [],
    );
  }

  /// `password cannot be empty`
  String get emptyPas {
    return Intl.message(
      'password cannot be empty',
      name: 'emptyPas',
      desc: '',
      args: [],
    );
  }

  /// `email cannot be empty`
  String get emptyEmail {
    return Intl.message(
      'email cannot be empty',
      name: 'emptyEmail',
      desc: '',
      args: [],
    );
  }

  /// `email is incorrect`
  String get incorrectEmail {
    return Intl.message(
      'email is incorrect',
      name: 'incorrectEmail',
      desc: '',
      args: [],
    );
  }

  /// `date cannot be empty`
  String get emptyDate {
    return Intl.message(
      'date cannot be empty',
      name: 'emptyDate',
      desc: '',
      args: [],
    );
  }

  /// `username is too short`
  String get shortUsername {
    return Intl.message(
      'username is too short',
      name: 'shortUsername',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get SignIn {
    return Intl.message(
      'Sign In',
      name: 'SignIn',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get SignUp {
    return Intl.message(
      'Sign Up',
      name: 'SignUp',
      desc: '',
      args: [],
    );
  }

  /// `Error occupied`
  String get someError {
    return Intl.message(
      'Error occupied',
      name: 'someError',
      desc: '',
      args: [],
    );
  }

  /// `Sign in success`
  String get successSignIn {
    return Intl.message(
      'Sign in success',
      name: 'successSignIn',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Gallery!`
  String get welcomeText {
    return Intl.message(
      'Welcome to Gallery!',
      name: 'welcomeText',
      desc: '',
      args: [],
    );
  }

  /// `I already have an account`
  String get alreadyHaveAcc {
    return Intl.message(
      'I already have an account',
      name: 'alreadyHaveAcc',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get createAccount {
    return Intl.message(
      'Create an account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
