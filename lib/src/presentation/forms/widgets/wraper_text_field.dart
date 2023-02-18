import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../../aplication/signin/signing_bloc.dart';

class WrapperTextField extends StatelessWidget {
  const WrapperTextField({
    required this.controlName,
    required this.labelText,
    required this.icon,
    this.obscureText,
    Key? key,
  }) : super(key: key);
  final String controlName;
  final String labelText;
  final IconData icon;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SigningBloc, SigningState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ReactiveTextField(
            obscureText: obscureText ?? false,
            formControlName: controlName,
            onChanged: ((_) {
              context.read<SigningBloc>().add(
                    SigningEvent.onChangeField(
                      isValidForm: state.signInFormController.form.valid,
                    ),
                  );
            }),
            decoration: InputDecoration(
              labelText: labelText,
              prefixIcon: Icon(icon),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
            ),
            validationMessages: state.signInFormController.validationErrorMsg,
          ),
        );
      },
    );
  }
}
