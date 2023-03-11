import 'package:flutter/material.dart';

abstract class ConstDrawerTheme {
  static DrawerThemeData drawerTheme() => const DrawerThemeData(
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(100),
            bottomRight: Radius.circular(100),
          ),
        ),
      );
}
