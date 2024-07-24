import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imagegalery/features/helpers/validation_helper.dart';

import '../../../code_kit/resources/enums.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState()) {
    on<_SignIn>(_onSignInPressed);
  }
  FutureOr<void> _onSignInPressed(_SignIn event, Emitter<SignInState> emit) async {
    final errors = {
      ...ValidationHelper.validateEmail(event.email),
      ...ValidationHelper.validatePassword(event.password),
    };
    if (errors.isNotEmpty) {
      return emit(
        state.copyWith(validationError: errors),
      );
    }
  }
}
