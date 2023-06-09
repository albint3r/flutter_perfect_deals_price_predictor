import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../aplication/signin/signing_bloc.dart';
import '../../../forms/widgets/wrapper_text_field.dart';

class ConfirmationPasswordField extends StatelessWidget {
  const ConfirmationPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SigningBloc, SigningState>(
      builder: (context, state) {
        return WrapperTextField(
          controlName: 'confirmationPassword',
          labelText: 'Confirmation Password',
          icon: Icons.password,
          validationMessages: state.signInFormModel.validationErrorMsg,
          obscureText: true,
          enableSend: false,
        );
      },
    );
  }
}