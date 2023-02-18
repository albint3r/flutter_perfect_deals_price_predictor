import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../../infrastructure/signin/i_sign_in_form_controller.dart';

part 'signing_bloc.freezed.dart';

part 'signing_events.dart';

part 'signing_state.dart';

@singleton
class SigningBloc extends Bloc<SigningEvent, SigningState> {
  SigningBloc(ISignInFormModel formController)
      : super(SigningState.initial(
          signInFormModel: formController,
        )) {
    on<SigningEvent>((event, emit) {
      event.when(
        started: () {
          // TODO ADD SOME LOGIC HERE!!!!
        },
      );
    });
  }
}
