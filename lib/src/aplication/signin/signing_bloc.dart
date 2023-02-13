import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/signin/email_field_validator.dart';

part 'signing_bloc.freezed.dart';

part 'signing_events.dart';

part 'signing_state.dart';

@singleton
class SigningBloc extends Bloc<SigningEvent, SigningState> {
  SigningBloc() : super(SigningState.initial()) {
    on<SigningEvent>((event, emit) {
      event.when(
        submitForm: () => _onSubmission(emit),
        obscurePasswordToggled: () => _onObscurePasswordToggled(emit),
        passwordChanged: (password) => _onPasswordChanged(
          password,
          emit,
        ),
        confirmPasswordChanged: (confirmPassword) =>
            _onConfirmationPasswordChanged(
          confirmPassword,
          emit,
        ),
        emailChanged: (email) => _onEmailChanged(email, emit),
      );
    });
  }

  void _onPasswordChanged(String password, Emitter<SigningState> emit) {
    emit(
      state.copyWith(
        email: password,
      ),
    );
  }

  void _onConfirmationPasswordChanged(
      String confirmationPassword, Emitter<SigningState> emit) {
    emit(
      state.copyWith(
        confirmationPassword: confirmationPassword,
      ),
    );
  }

  void _onEmailChanged(String email, Emitter<SigningState> emit) {
    final fieldValidator = EmailFieldValidator(state.email);
    emit(
      state.copyWith(
          email: email, isEmailValidated: fieldValidator.isEmailValid()),
    );
  }

  void _onObscurePasswordToggled(Emitter<SigningState> emit) {
    emit(
      state.copyWith(
        isObscurePassword: !state.isObscurePassword,
      ),
    );
  }

  void _onSubmission(Emitter<SigningState> emit) {
    if (state.isEmailValidated != null) {
      // todo implement
    } else {
      emit(
        state.copyWith(
          isValidated: true,
        ),
      );
    }
  }
}
