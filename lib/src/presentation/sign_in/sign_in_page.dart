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

// Create a corresponding State class.
// This class holds data related to the form.
class SignInPageState extends State<SignInPage> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<SignInPageState>.

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      body: BlocProvider(
        // create: (context) => getIt<SigningBloc>(),
        create: (context) => SigningBloc(),
        child: const BodySignInForm(),
      ),
    );
  }
}


