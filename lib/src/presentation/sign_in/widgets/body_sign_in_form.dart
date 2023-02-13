import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfect_deals_price_predictor/src/aplication/signin/signing_bloc.dart';
import 'package:perfect_deals_price_predictor/src/presentation/core/app_router/app_router.dart';
import 'package:perfect_deals_price_predictor/src/presentation/sign_in/widgets/submit_button_sign_in_form.dart';
import 'emai_field.dart';

class BodySignInForm extends StatelessWidget {
  const BodySignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<SigningBloc, SigningState>(
      listener: (context, state) {
        if (state.isValidated) {
          context.pushRoute(const HomeRoute());
        }
      },
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            EmailField(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: SubmitButtonSignInForm(),
            ),
          ],
        ),
      ),
    );
  }
}
