import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfect_deals_price_predictor/src/aplication/signin/signing_bloc.dart';
import 'package:perfect_deals_price_predictor/src/presentation/sign_in/widgets/confirmation_password_field.dart';
import 'package:perfect_deals_price_predictor/src/presentation/sign_in/widgets/password_field.dart';
import 'package:perfect_deals_price_predictor/src/presentation/sign_in/widgets/submit_button_sign_in_form.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'emai_field.dart';

class BodySignInForm extends StatelessWidget {
  const BodySignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SigningBloc, SigningState>(
      builder: (context, state) {
        return ReactiveForm(
          formGroup: state.formController.form,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                EmailField(),
                PasswordField(),
                ConfirmationPasswordField(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: SubmitButtonSignInForm(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
