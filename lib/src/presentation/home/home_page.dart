import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfect_deals_price_predictor/src/aplication/auth/auth_bloc.dart';
import 'package:perfect_deals_price_predictor/src/presentation/core/app_router/app_router.dart';
import 'package:perfect_deals_price_predictor/src/presentation/home/widgets/body_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          // Check If the User is Null
          if (state.auth.currentUser == null) {
            context.pushRoute(
              const LoginRoute(),
            );
          }
        },
        child: const BodyHome(),
      ),
    );
  }
}
