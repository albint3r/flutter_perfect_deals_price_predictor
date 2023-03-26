import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: CircleAvatar(
        child: Transform.scale(
          scale: 2,
          child: Image.asset(
            'assets/images/no_image_user_avatar.png',
          ),
        ),
      ),
    );
  }
}
