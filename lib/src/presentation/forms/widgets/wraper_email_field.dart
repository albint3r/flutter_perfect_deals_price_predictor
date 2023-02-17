import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../../aplication/signin/signing_bloc.dart';

class WrapperEmailField extends StatelessWidget {
  const WrapperEmailField({
    required this.controlName,
    required this.icon,
    Key? key,
  }) : super(key: key);
  final String controlName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SigningBloc, SigningState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ReactiveTextField(
            validationMessages: state.signInFormController.validationErrorMsg,
            formControlName: controlName,
            decoration: InputDecoration(
              labelText: controlName,
              prefixIcon: Icon(icon),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
