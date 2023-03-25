import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class ConstTextTheme {
  static TextTheme textTheme({
    required ColorScheme colorScheme,
  }) {
    return GoogleFonts.getTextTheme(
      "Raleway",
      TextTheme(
        headline1: TextStyle(
          fontSize: 60,
          color: colorScheme.primary,
        ),
        headline2: TextStyle(
          fontSize: 56,
          color: colorScheme.primary,
        ),
        headline3: TextStyle(
          fontSize: 45,
          color: colorScheme.primary,
        ),
        headline4: TextStyle(
          fontSize: 34,
          color: colorScheme.primary,
        ),
        headline5: TextStyle(
          fontSize: 24,
          color: colorScheme.primary,
        ),
        headline6: TextStyle(
          fontSize: 20,
          color: colorScheme.primary,
        ),
        bodyText1: const TextStyle(
          fontSize: 14,
        ),
        bodyText2: const TextStyle(
          fontSize: 14,
        ),
        overline: TextStyle(
          fontSize: 10,
          color: colorScheme.primary,
        ),
        subtitle1: TextStyle(
          fontSize: 16,
          color: colorScheme.secondary,
        ),
        subtitle2: TextStyle(
          fontSize: 14,
          color: colorScheme.secondary,
        ),
        button: TextStyle(
          fontSize: 14,
          color: colorScheme.onPrimary,
        ),
        caption: TextStyle(
          fontSize: 12,
          color: colorScheme.outline,
        ),
      ),
    );
  }
}
