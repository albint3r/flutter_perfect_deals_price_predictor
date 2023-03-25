import 'package:flutter/material.dart';

abstract class ConstButtonStyle {
  static ElevatedButtonThemeData buttonStyle({
    required ColorScheme colorScheme,
  }) =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          shadowColor: MaterialStatePropertyAll(colorScheme.secondary),
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
                topLeft: Radius.circular(100),
              ),
            ),
          ),
          fixedSize: MaterialStateProperty.all(
            const Size(400, 80),
          ),
          elevation: MaterialStateProperty.all(20),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              // return colorScheme.outline;
              return colorScheme.outline;
            }
            if (states.contains(MaterialState.hovered)) {
              return colorScheme.secondary;
            }
            return colorScheme.primary;
          }),
        ),
      );
}
