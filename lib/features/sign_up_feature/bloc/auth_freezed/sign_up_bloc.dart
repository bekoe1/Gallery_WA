import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imagegalery/code_kit/resources/enums.dart';
import 'package:imagegalery/features/helpers/validation_helper.dart';
import 'package:imagegalery/features/sign_up_feature/repo/sign_up_repo.dart';
import 'package:imagegalery/features/sign_up_feature/sign_up_feature.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpRepo signUpRepo;

  SignUpBloc(this.signUpRepo) : super(const _SignUpState()) {
    on<_SignUp>(_onSignUpPressed);
  }

  FutureOr<void> _onSignUpPressed(_SignUp event, Emitter<SignUpState> emit) async {
    emit(
      state.copyWith(
        currentState: SignUpStates.loading,
        validationError: {},
        requestError: null,
      ),
    );

    final errors = {
      ...ValidationHelper.validateEmail(event.email),
      ...ValidationHelper.validateBirthday(event.birthday),
      ...ValidationHelper.validateConfirmedPas(event.password, event.confirmedPas),
      ...ValidationHelper.validatePassword(event.password),
      ...ValidationHelper.validateUsername(event.username),
    };
    if (errors.isNotEmpty) {
      return emit(
        state.copyWith(validationError: errors),
      );
    }

    final date = DateTime.parse(event.birthday);
    log(date.toString());
    final requestDto = RequestUserDto(
      email: event.email,
      birthday: date,
      displayName: event.username,
      password: event.password,
    );

    final response = await signUpRepo.createNewUser(dto: requestDto);
    if (response == null) {
      emit(
        state.copyWith(
          currentState: SignUpStates.signUpDone,
        ),
      );
    } else {
      emit(
        state.copyWith(
          currentState: SignUpStates.requestError,
          requestError: response,
        ),
      );
    }
  }
}
