import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfect_deals_price_predictor/injectables.dart';
import 'package:perfect_deals_price_predictor/src/aplication/auth/auth_bloc.dart';
import 'package:perfect_deals_price_predictor/src/aplication/login/login_bloc.dart';
import 'package:perfect_deals_price_predictor/src/presentation/auth/widgets/body_login_form.dart';

// Create a Form widget.
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
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
              return getIt.get<LoginBloc>();
            },
          )
        ],
        child: const BodyLoginForm(),
      ),
    );
  }
}
