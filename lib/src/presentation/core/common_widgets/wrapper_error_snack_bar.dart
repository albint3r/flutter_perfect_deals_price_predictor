import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> errorSnackBarMsg(
  BuildContext context,
  String errorMsg,
) {
  final snackBar = SnackBar(
    content: Text(errorMsg),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {
        // Some code to undo the change.
      },
    ),
  );
  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
