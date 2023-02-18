import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfect_deals_price_predictor/src/aplication/login/login_bloc.dart';
import 'package:perfect_deals_price_predictor/src/presentation/auth/widgets/fields/password_field.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../core/common_widgets/wrapper_scaffold_body.dart';
import 'buttons/submit_button_login_form.dart';
import 'fields/emai_field.dart';
import 'buttons/nav_to_sigin_text_button.dart';

class BodyLoginForm extends StatelessWidget {
  const BodyLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        final validationErrorMsg = state.loginFormModel.validationErrorMsg;
        return WrapperScaffoldBody(
          child: ReactiveForm(
            formGroup: state.loginFormModel.form,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EmailField(validationErrorMsg: validationErrorMsg),
                  PasswordField(validationErrorMsg: validationErrorMsg),
                  const NavToSigInTextButton(),
                  const SubmitButtonLoginForm()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
