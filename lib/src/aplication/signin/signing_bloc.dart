import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../infrastructure/signin/i_sign_in_form_controller.dart';

part 'signing_bloc.freezed.dart';

part 'signing_events.dart';

part 'signing_state.dart';

@singleton
class SigningBloc extends Bloc<SigningEvent, SigningState> {
  SigningBloc(ISignInFormController formController)
      : super(SigningState.initial(
          signInFormController: formController,
        )) {
    on<SigningEvent>((event, emit) {
      event.when(
        started: () {
          // TODO ADD SOME LOGIC HERE!!!!
        },
        onChangeField: (isValidForm) {
          allFieldAreValid(
            isValidForm: isValidForm,
            emit: emit,
          );
        },
      );
    });
  }

  void allFieldAreValid({bool? isValidForm, emit}) {
    if (isValidForm != null && isValidForm) {
      emit(
        state.copyWith(
            signInFormController: state.signInFormController,
            isFormValid: true),
      );
    }
    // Check if the User change a valid form and remove a validation
    // this would change the color of the button.
    else if (isValidForm != null && isValidForm != state.isFormValid) {
      emit(
        state.copyWith(
            signInFormController: state.signInFormController,
            isFormValid: false),
      );
    }
  }
}
