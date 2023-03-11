import 'package:flutter/material.dart';

abstract class ConstButtonStyle {
  static ElevatedButtonThemeData buttonStyle({
    required ColorScheme colorScheme,
  }) =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          fixedSize: MaterialStateProperty.all(
            const Size(150, 50),
          ),
          elevation: MaterialStateProperty.all(5),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
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
