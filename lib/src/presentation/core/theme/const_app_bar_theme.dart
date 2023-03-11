import 'package:flutter/material.dart';

abstract class ConstAppBarTheme {
  static AppBarTheme appBarTheme() => const AppBarTheme(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
          ),
        ),
      );
}
