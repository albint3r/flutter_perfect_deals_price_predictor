import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfect_deals_price_predictor/src/aplication/auth/auth_bloc.dart';
import 'package:perfect_deals_price_predictor/src/aplication/signin/signing_bloc.dart';
import 'package:perfect_deals_price_predictor/src/presentation/core/app_router/app_router.dart';
import '../../../core/common_widgets/wrapper_error_snack_bar.dart';
import '../../../forms/widgets/wrapper_submit_login_or_sigin_elevated_button.dart';

class SubmitButtonSignInForm extends StatelessWidget {
  const SubmitButtonSignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
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
      },
      builder: (context, authState) {
        return BlocBuilder<SigningBloc, SigningState>(
          builder: (context, sigInState) {
            return WrapperSubmitLoginOrSignInElevatedButton(
              buttonText: 'Create an Account Now!',
              onSubmit: ((context) {
                context.read<AuthBloc>().add(
                      AuthEvent.createUserWithEmailAndPassword(
                          signInFormModel: sigInState.signInFormModel),
                    );
              }),
            );
          },
        );
      },
    );
  }
}
