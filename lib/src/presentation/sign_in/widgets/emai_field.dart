import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../aplication/signin/signing_bloc.dart';

class EmailField extends StatelessWidget {
  const EmailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SigningBloc, SigningState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
            ),
            // The validator receives the text that the user has entered
            keyboardType: TextInputType.emailAddress,
            onChanged: (email) {
              context.read<SigningBloc>().add(
                    SigningEvent.emailChanged(email: email),
                  );
            },
            validator: (email) {
              if (state.isEmailValidated != null) {
                return state.isEmailValidated;
              }
              return null;
            },
            autovalidateMode: state.email == ''
                ? AutovalidateMode.always
                : AutovalidateMode.onUserInteraction,
          ),
        );
      },
    );
  }
}
