part of 'custom_theme.dart';

extension on CustomTheme {
  InputDecorationTheme inputDecorationTheme() =>
      const InputDecorationTheme(
        outlineBorder: BorderSide.none,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(26)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(26)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(26)),
        ),
      );
}
