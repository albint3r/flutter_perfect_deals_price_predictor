import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../core/app_router/app_router.dart';
import '../../../core/common_widgets/wraper_nav_to_loging_or_signin_text_button.dart';

class NavToLoginTextButton extends StatelessWidget {
  const NavToLoginTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return WrapperNavToLoginOrSignInTextButton(
      leftText: 'You have an account?',
      textButton: 'Yes, go to login',
      onPressed: () {
        context.pushRoute(
          const LoginRoute(),
        );
      },
    );
  }
}
