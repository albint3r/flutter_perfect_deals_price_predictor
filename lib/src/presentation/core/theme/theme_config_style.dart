import 'package:flutter/material.dart';

import 'constants_style.dart';

class ThemeConfigStyle {
  static ThemeData get light {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: flexSchemeLight,
    );
  }

  static ThemeData get dark {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: flexSchemeDark,
    );
  }
}
