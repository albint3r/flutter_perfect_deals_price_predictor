import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../aplication/auth/auth_bloc.dart';
import '../app_router/app_router.dart';
import 'app_alert_dialog.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  Future _showLogOutAlertDialog({
    required BuildContext context,
    required AuthState state,
  }) =>
      showDialog(
        context: context,
        builder: (context) => AppAlertDialog(
          title: '¿Seguro que quiere cerrar sesión?',
          content: 'Haz clic en el botón para cerrar sesion.',
          actions: [
            TextButton(
              onPressed: () {
                context.router.pop();
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                _sigOutConfirmation(context, state);
              },
              child: Text(
                'Cerrar',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ],
        ),
      );

  void _sigOutConfirmation(BuildContext context, AuthState state) {
    state.auth.signOut();
    // Kill all routes with the Home Page, this helps to
    // avoid bugs when the user navigate back and isn't login
    context.router.replaceAll(
      [const LoginRoute()],
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final bloc = context.watch<AuthBloc>();
    final state = bloc.state;
    return Drawer(
      child: Column(
        children: [
          Container(
            height: size.height * .25,
            width: size.width,
            decoration: BoxDecoration(
              color: theme.primaryColor,
            ),
          ),
          InkWell(
            onTap: () {
              _showLogOutAlertDialog(context: context, state: state);
            },
            child: const Card(
              child: ListTile(
                title: Text('Cerrar sesión '),
                trailing: Icon(Icons.logout),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
