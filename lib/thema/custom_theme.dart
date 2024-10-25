import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_code_check/extension/build_context_extension.dart';
import 'package:yumemi_code_check/utils/gen/colors.gen.dart';

part 'custom_theme.input_decoration.dart';

part 'custom_theme.divider.dart';

part 'custom_theme.g.dart';

@Riverpod(keepAlive: true)
CustomTheme customTheme(Ref ref) => CustomTheme();

class CustomTheme {
  ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
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
      dividerTheme: dividerThemeData(context),
      inputDecorationTheme: inputDecorationTheme(context),
    );
  }

  ThemeData darkThemeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      primaryColor: ColorName.darkPrimary,
      colorScheme: const ColorScheme.dark(
        primary: ColorName.darkPrimary,
        secondary: ColorName.darkSecondary,
        surface: ColorName.darkSurface,
        tertiary: ColorName.darkTertiary,
        outline: ColorName.darkOutline,
        surfaceContainerHigh: ColorName.darkSurfaceContainerHigh,
        onSurfaceVariant: ColorName.darkOnSurfaceVariant,
      ),
      dividerTheme: dividerThemeData(context),
      inputDecorationTheme: inputDecorationTheme(context),
    );
  }
}
