import 'package:flutter/material.dart';

class BottomNavAppBar extends StatelessWidget {
  const BottomNavAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 12,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.image_search_outlined),
          label: 'Predict Price',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.logout),
          label: 'Logout',
        ),
      ],
    );
  }
}
