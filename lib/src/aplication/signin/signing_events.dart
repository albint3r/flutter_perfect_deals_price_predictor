part of 'signing_bloc.dart';

@freezed
class SigningEvent with _$SigningEvent {
  const factory SigningEvent.submitForm() = SigningEventsubmitForm;

  const factory SigningEvent.obscurePasswordToggled() =
      SigningEventObscurePasswordToggled;

  const factory SigningEvent.passwordChanged({
    required String password,
  }) = SigningEventPasswordChanged;

  const factory SigningEvent.confirmPasswordChanged({
    required String confirmPassword,
  }) = SigningEventConfirmPasswordChanged;

  const factory SigningEvent.emailChanged({
    required String email,
  }) = SigningEventEmailChanged;
}
