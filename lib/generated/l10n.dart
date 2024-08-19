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
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
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

  /// `Your token expired`
  String get tokenExpired {
    return Intl.message(
      'Your token expired',
      name: 'tokenExpired',
      desc: '',
      args: [],
    );
  }

  /// `You are not connected to the network or your internet is weak`
  String get lostConnection {
    return Intl.message(
      'You are not connected to the network or your internet is weak',
      name: 'lostConnection',
      desc: '',
      args: [],
    );
  }

  /// `Age restrictions - at least 10 years old`
  String get userIsTooYoung {
    return Intl.message(
      'Age restrictions - at least 10 years old',
      name: 'userIsTooYoung',
      desc: '',
      args: [],
    );
  }

  /// `phone number is incorrect`
  String get incorrectPhone {
    return Intl.message(
      'phone number is incorrect',
      name: 'incorrectPhone',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwordHint {
    return Intl.message(
      'Password',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailHint {
    return Intl.message(
      'Email',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Birthday`
  String get birthdayHint {
    return Intl.message(
      'Birthday',
      name: 'birthdayHint',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirmPasswordHint {
    return Intl.message(
      'Confirm password',
      name: 'confirmPasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `User name`
  String get usernameHint {
    return Intl.message(
      'User name',
      name: 'usernameHint',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phoneHint {
    return Intl.message(
      'Phone',
      name: 'phoneHint',
      desc: '',
      args: [],
    );
  }

  /// `Sorry`
  String get sorry {
    return Intl.message(
      'Sorry',
      name: 'sorry',
      desc: '',
      args: [],
    );
  }

  /// `There is no picture`
  String get noPicture {
    return Intl.message(
      'There is no picture',
      name: 'noPicture',
      desc: '',
      args: [],
    );
  }

  /// `Please come back later`
  String get comeBackLater {
    return Intl.message(
      'Please come back later',
      name: 'comeBackLater',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `All photos`
  String get allPhotos {
    return Intl.message(
      'All photos',
      name: 'allPhotos',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get nextPage {
    return Intl.message(
      'Next',
      name: 'nextPage',
      desc: '',
      args: [],
    );
  }

  /// `Select photo`
  String get selectPhoto {
    return Intl.message(
      'Select photo',
      name: 'selectPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get newImages {
    return Intl.message(
      'New',
      name: 'newImages',
      desc: '',
      args: [],
    );
  }

  /// `Popular`
  String get popularImages {
    return Intl.message(
      'Popular',
      name: 'popularImages',
      desc: '',
      args: [],
    );
  }

  /// `Confirmation`
  String get confirmation {
    return Intl.message(
      'Confirmation',
      name: 'confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to exit?`
  String get exitConfirmation {
    return Intl.message(
      'Are you sure you want to exit?',
      name: 'exitConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `The entered data will be lost`
  String get dataLostConfirmation {
    return Intl.message(
      'The entered data will be lost',
      name: 'dataLostConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Exit`
  String get exit {
    return Intl.message(
      'Exit',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `Please, pick image`
  String get pickImageError {
    return Intl.message(
      'Please, pick image',
      name: 'pickImageError',
      desc: '',
      args: [],
    );
  }

  /// `Field can not be empty`
  String get emptyField {
    return Intl.message(
      'Field can not be empty',
      name: 'emptyField',
      desc: '',
      args: [],
    );
  }

  /// `Name is too short or incorrect`
  String get incorrectName {
    return Intl.message(
      'Name is too short or incorrect',
      name: 'incorrectName',
      desc: '',
      args: [],
    );
  }

  /// `Photo uploaded successfully`
  String get imageUploaded {
    return Intl.message(
      'Photo uploaded successfully',
      name: 'imageUploaded',
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
