import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfect_deals_price_predictor/src/aplication/signin/signing_bloc.dart';

class SubmitButtonSignInForm extends StatelessWidget {
  const SubmitButtonSignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<SigningBloc>().add(
              const SigningEvent.submitForm(),
            );
      },
      child: const Text('Submit'),
    );
  }
}
