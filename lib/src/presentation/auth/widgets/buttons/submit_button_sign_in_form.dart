import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../aplication/auth/auth_bloc.dart';
import '../../../../aplication/signin/signing_bloc.dart';
import '../../../core/app_router/app_router.dart';
import '../../../core/common_widgets/wrapper_error_snack_bar.dart';
import '../../../forms/widgets/wrapper_submit_login_or_sigin_elevated_button.dart';

class SubmitButtonSignInForm extends StatelessWidget {
  const SubmitButtonSignInForm({super.key});

  void _authUserAndRedirectToHome(BuildContext context, AuthState state) {
    // If the user successfully create there account it will be
    // send it to the Home Page
    if (state.auth.currentUser != null) {
      context.router.replaceAll(
        [const HomeRoute()],
      );
      // Show Error Msg
    } else {
      errorSnackBarMsg(
        context: context,
        errorMsg: 'The Email Address is Already in use, try another one',
      );
    }
  }

  void _eventCreateUserWithEmailAndPassword(
      BuildContext context, SigningState sigInState) {
    context.read<AuthBloc>().add(
          AuthEvent.createUserWithEmailAndPassword(
            signInFormModel: sigInState.signInFormModel,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: _authUserAndRedirectToHome,
      builder: (context, authState) {
        return BlocBuilder<SigningBloc, SigningState>(
          builder: (context, sigInState) {
            return WrapperSubmitLoginOrSigInElevatedButton(
              buttonText: 'Create an Account Now!',
              onSubmit: (context) => _eventCreateUserWithEmailAndPassword(
                context,
                sigInState,
              ),
            );
          },
        );
      },
    );
  }
}
