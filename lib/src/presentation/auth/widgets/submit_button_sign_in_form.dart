import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfect_deals_price_predictor/src/aplication/signin/signing_bloc.dart';
import 'package:perfect_deals_price_predictor/src/presentation/core/app_router/app_router.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SubmitButtonSignInForm extends StatelessWidget {
  const SubmitButtonSignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SigningBloc, SigningState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Center(
            child: ReactiveFormConsumer(
              builder: (context, formGroup, child) {
                return ElevatedButton(
                  onPressed: formGroup.valid ? () => _onSubmit(context) : null,
                  child: const Text(
                    'Create Account Now',
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  void _onSubmit(BuildContext context) {
    context.pushRoute(const HomeRoute());
  }
}
