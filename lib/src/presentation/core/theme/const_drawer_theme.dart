import 'package:flutter/material.dart';

abstract class ConstDrawerTheme {
  static DrawerThemeData drawerTheme({
    ColorScheme? colorScheme,
  }) =>
      DrawerThemeData(
        backgroundColor: colorScheme?.primary,
        elevation: 15,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(100),
            bottomRight: Radius.circular(100),
          ),
        ),
      );
}
