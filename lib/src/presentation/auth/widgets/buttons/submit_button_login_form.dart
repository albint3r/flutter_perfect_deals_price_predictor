import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfect_deals_price_predictor/src/aplication/login/login_bloc.dart';
import 'package:perfect_deals_price_predictor/src/domain/auth/fire_base_auth.dart';
import 'package:perfect_deals_price_predictor/src/presentation/core/app_router/app_router.dart';
import '../../../../aplication/auth/auth_bloc.dart';
import '../../../core/common_widgets/wrapper_error_snack_bar.dart';
import '../../../forms/widgets/wrapper_submit_login_or_sigin_elevated_button.dart';

class SubmitButtonLoginForm extends StatelessWidget {
  const SubmitButtonLoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.auth.currentUser != null) {
          context.router.replaceAll(
            [const HomeRoute()],
          );
          // Show Error Msg
        } else {
          errorSnackBarMsg(
            context: context,
            errorMsg: 'Password or Email is wrong, try again!',
          );
        }
      },
      builder: (context, authState) {
        return BlocBuilder<LoginBloc, LoginState>(
          builder: (context, logInState) {
            return WrapperSubmitLoginOrSigInElevatedButton(
              buttonText: 'Log in your account',
              onSubmit: ((context) {
                context.read<AuthBloc>().add(
                      AuthEvent.logInAccount(
                        loginFormModel: logInState.loginFormModel,
                      ),
                    );
              }),
            );
          },
        );
      },
    );
  }
}
