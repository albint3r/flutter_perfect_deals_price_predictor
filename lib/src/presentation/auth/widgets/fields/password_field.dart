import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../aplication/signin/signing_bloc.dart';
import '../../../forms/widgets/wrapper_text_field.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    required this.validationErrorMsg,
    Key? key,
  }) : super(key: key);
  final Map<String, String Function(Object)>? validationErrorMsg;

  @override
  Widget build(BuildContext context) {
    return WrapperTextField(
      controlName: 'password',
      labelText: 'Password',
      icon: Icons.password,
      validationMessages: validationErrorMsg,
      obscureText: true,
      enableSend: false,
    );
  }
}
