import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> errorSnackBarMsg({
  required BuildContext context,
  required String errorMsg,
}) {
  final snackBar = SnackBar(
    duration: const Duration(seconds: 2),
    elevation: 5,
    content: Text(errorMsg),
    action: SnackBarAction(
      label: 'Close',
      onPressed: () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      },
    ),
  );
  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
