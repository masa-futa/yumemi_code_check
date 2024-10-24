part of 'custom_theme.dart';

extension on CustomTheme {
  DividerThemeData dividerThemeData(BuildContext context) =>
      DividerThemeData(
        color: context.theme.colorScheme.outline,
      );
}
