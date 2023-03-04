import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../aplication/auth/auth_bloc.dart';
import '../app_router/app_router.dart';

class SignOutElevatedButton extends StatelessWidget {
  const SignOutElevatedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<AuthBloc>();
    final state = bloc.state;
    return ElevatedButton(
        onPressed: () {
          state.auth.signOut();
          // Kill all routes with the Home Page, this helps to
          // avoid bugs when the user navigate back and isn't login
          context.router.replaceAll(
            [const LoginRoute()],
          );
        },
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Sign out'),
        ));
  }
}
