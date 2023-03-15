import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../aplication/signin/signing_bloc.dart';
import '../../../forms/widgets/wrapper_text_field.dart';

class UserNameField extends StatelessWidget {
  const UserNameField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SigningBloc, SigningState>(
      builder: (context, state) {
        return WrapperTextField(
          controlName: 'userName',
          labelText: 'User Name',
          validationMessages: state.signInFormModel.validationErrorMsg,
          icon: Icons.person,
          enableSend: false,
        );
      },
    );
  }
}
