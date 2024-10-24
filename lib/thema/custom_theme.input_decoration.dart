part of 'custom_theme.dart';

extension on CustomTheme {
  InputDecorationTheme inputDecorationTheme(BuildContext context) =>
      InputDecorationTheme(
        filled: true,
        fillColor: context.theme.colorScheme.surfaceContainerHigh,
        outlineBorder: BorderSide.none,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(26)),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(26)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(26)),
        ),
      );
}