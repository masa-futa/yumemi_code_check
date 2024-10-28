import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_code_check/utils/gen/colors.gen.dart';

part 'custom_theme.input_decoration.dart';

part 'custom_theme.divider.dart';

part 'custom_theme.icon_button.dart';

part 'generated/custom_theme.g.dart';

@Riverpod(keepAlive: true)
CustomTheme customTheme(Ref ref) => CustomTheme();

class CustomTheme {
  /// ライトモードカラースキーム
  ThemeData lightThemeData(BuildContext context) {
    return ThemeData.light(useMaterial3: true).copyWith(
      primaryColor: ColorName.litePrimary,
      colorScheme: const ColorScheme.light(
        primary: ColorName.litePrimary,
        secondary: ColorName.liteSecondary,
        surface: ColorName.liteSurface,
        tertiary: ColorName.liteTertiary,
        outline: ColorName.liteOutline,
        surfaceContainerHigh: ColorName.liteSurfaceContainerHigh,
        onSurfaceVariant: ColorName.liteOnSurfaceVariant,
      ),
      dividerTheme: dividerLiteThemeData(),
      inputDecorationTheme: inputDecorationTheme().copyWith(
        filled: true,
        fillColor: ColorName.liteSurfaceContainerHigh,
      ),
      iconButtonTheme: iconButtonLiteThemeData(),
    );
  }

  /// ダークモードカラースキーム
  ThemeData darkThemeData(BuildContext context) {
    return ThemeData.dark(useMaterial3: true).copyWith(
      primaryColor: ColorName.darkPrimary,
      colorScheme: const ColorScheme.dark(
        primary: ColorName.darkPrimary,
        onPrimary: ColorName.darkOnPrimary,
        secondary: ColorName.darkSecondary,
        surface: ColorName.darkSurface,
        tertiary: ColorName.darkTertiary,
        outline: ColorName.darkOutline,
        surfaceContainerHigh: ColorName.darkSurfaceContainerHigh,
        onSurfaceVariant: ColorName.darkOnSurfaceVariant,
      ),
      dividerTheme: dividerDarkThemeData(),
      inputDecorationTheme: inputDecorationTheme().copyWith(
        filled: true,
        fillColor: ColorName.darkSurfaceContainerHigh,
      ),
      iconButtonTheme: iconButtonDarkThemeData(),
    );
  }
}
