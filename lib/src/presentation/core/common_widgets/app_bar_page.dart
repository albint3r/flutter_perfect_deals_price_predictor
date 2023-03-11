import 'package:flutter/material.dart';

abstract class AppBarPage {
  static PreferredSizeWidget getBar({
    required String title,
    List<Widget>? actions,
  }) =>
      AppBar(
        title: Text(title),
        actions: actions,
      );
}
