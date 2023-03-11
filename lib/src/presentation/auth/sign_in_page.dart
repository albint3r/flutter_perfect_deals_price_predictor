import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injectables.dart';
import '../../aplication/auth/auth_bloc.dart';
import '../../aplication/signin/signing_bloc.dart';
import 'widgets/body_sign_in_form.dart';

// Create a Form widget.
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  SignInPageState createState() {
    return SignInPageState();
  }
}

class SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) {
              return getIt.get<AuthBloc>();
            },
          ),
          BlocProvider(
            create: (context) {
              return getIt.get<SigningBloc>();
            },
          )
        ],
        child: const BodySignInForm(),
      ),
    );
  }
}
