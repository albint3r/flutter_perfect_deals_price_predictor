part of 'signing_bloc.dart';

@freezed
class SigningEvent with _$SigningEvent {
 const factory SigningEvent.started() = _SigningEventStarted;
}
