import 'package:flutter/material.dart';
import 'package:perfect_deals_price_predictor/injectables.dart';
import 'package:perfect_deals_price_predictor/src/presentation/sign_in/widgets/body_sign_in_form.dart';
import '../../aplication/signin/signing_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: BlocProvider(
        // create: (context) => getIt<SigningBloc>(),
        create: (context) {
          return getIt.get<SigningBloc>()..add(const SigningEvent.started());
        },
        child: const BodySignInForm(),
      ),
    );
  }
}
