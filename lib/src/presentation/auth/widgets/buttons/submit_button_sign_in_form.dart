import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:perfect_deals_price_predictor/src/presentation/core/app_router/app_router.dart';
import '../../../forms/widgets/wrapper_submit_login_or_sigin_elevated_button.dart';

class SubmitButtonSignInForm extends StatelessWidget {
  const SubmitButtonSignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WrapperSubmitLoginOrSignInElevatedButton(
      buttonText: 'Create an Account Now!',
      onSubmit: _onSubmit,
    );
  }

  void _onSubmit(BuildContext context) {
    context.pushRoute(const HomeRoute());
  }
}
