import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfect_deals_price_predictor/src/aplication/auth/auth_bloc.dart';
import 'package:perfect_deals_price_predictor/src/presentation/core/app_router/app_router.dart';
import '../../core/common_widgets/wrapper_scaffold_body.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state.auth.currentUser == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return WrapperScaffoldBody(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Home'),
                ElevatedButton(
                    onPressed: () {
                      state.auth.signOut();
                      // Kill all routes with the Home Page, this helps to
                      // avoid bugs when the user navigate back and isn't login
                      context.router.popUntilRouteWithName('/');
                      context.router.popAndPush(
                        const LoginRoute(),
                      );
                    },
                    child: const Text('Sign out'))
              ],
            ),
          ),
        );
      },
    );
  }
}
