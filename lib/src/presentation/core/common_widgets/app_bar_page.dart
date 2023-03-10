import 'package:flutter/material.dart';

abstract class AppBarPage {
  static PreferredSizeWidget getBar({
    required String title,
    List<Widget>? actions,
  }) =>
      AppBar(
        title: Text(title),
        leading: const Icon(Icons.menu),
        actions: actions ?? [],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
          ),
        ),
      );
}
