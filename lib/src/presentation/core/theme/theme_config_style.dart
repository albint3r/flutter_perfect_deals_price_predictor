import 'package:flutter/material.dart';
import 'const_button_style.dart';
import 'const_color_scheme.dart';
import 'const_text_theme.dart';

class ThemeConfigStyle {
  static ThemeData get light {
    return ThemeConfigStyle.themeDataGeneral(
      colorScheme: flexSchemeLight,
      isDark: false,
    );
  }

  static ThemeData get dark {
    return ThemeConfigStyle.themeDataGeneral(
      colorScheme: flexSchemeDark,
      isDark: true,
    );
  }

  static ThemeData themeDataGeneral({
    required ColorScheme colorScheme,
    required bool isDark,
  }) {
    return ThemeData(
      colorScheme: colorScheme,
      brightness: isDark ? Brightness.dark : Brightness.light,
      visualDensity: VisualDensity.standard,
      elevatedButtonTheme: ConstButtonStyle.buttonStyle(
        colorScheme: colorScheme,
      ),
      textTheme: ConstTextTheme.textTheme(
        colorScheme: colorScheme,
      ),
    );
  }
}
