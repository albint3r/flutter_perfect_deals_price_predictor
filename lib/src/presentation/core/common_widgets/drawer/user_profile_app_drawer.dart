import 'package:flutter/material.dart';

import '../../../../aplication/auth/auth_bloc.dart';
import '../gap.dart';
import 'user_avatar.dart';

class UserProfileAppDrawer extends StatelessWidget {
  const UserProfileAppDrawer({
    super.key,
    required this.size,
    required this.theme,
    required this.state,
  });

  final Size size;
  final ThemeData theme;
  final AuthState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .25,
      width: size.width,
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      ),
      child: ListView(
        children: [
          const UserAvatar(),
          const Gap(20),
          Center(
            child: Text(
              (state.auth.currentUser?.email ?? '').toUpperCase(),
              style: theme.textTheme.subtitle2,
            ),
          )
        ],
      ),
    );
  }
}
