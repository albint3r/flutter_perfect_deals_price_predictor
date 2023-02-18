import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfect_deals_price_predictor/src/aplication/signin/signing_bloc.dart';
import 'package:perfect_deals_price_predictor/src/presentation/auth/widgets/fields/password_field.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../core/common_widgets/wrapper_scaffold_body.dart';
import 'buttons/submit_button_sign_in_form.dart';
import 'fields/confirmation_password_field.dart';
import 'fields/emai_field.dart';
import 'fields/user_name_field.dart';
import 'buttons/nav_to_login_text_button.dart';

class BodySignInForm extends StatelessWidget {
  const BodySignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SigningBloc, SigningState>(
      builder: (context, state) {
        final validationErrorMsg = state.signInFormModel.validationErrorMsg;
        return WrapperScaffoldBody(
          child: ReactiveForm(
            formGroup: state.signInFormModel.form,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const UserNameField(),
                  EmailField(validationErrorMsg: validationErrorMsg),
                  PasswordField(validationErrorMsg: validationErrorMsg),
                  const ConfirmationPasswordField(),
                  const NavToLoginTextButton(),
                  const SubmitButtonSignInForm(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
