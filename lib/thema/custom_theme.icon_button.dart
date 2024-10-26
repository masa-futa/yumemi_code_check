part of 'custom_theme.dart';

extension on CustomTheme {
  IconButtonThemeData iconButtonLiteThemeData() =>
      IconButtonThemeData(
        style: IconButton.styleFrom(
          backgroundColor: ColorName.litePrimary,
          foregroundColor: ColorName.liteOnPrimary,
          disabledBackgroundColor: ColorName.litePrimary.withOpacity(0.5),
          iconSize: 24,
        ),
      );

  IconButtonThemeData iconButtonDarkThemeData() =>
      IconButtonThemeData(
        style: IconButton.styleFrom(
          backgroundColor: ColorName.darkPrimary,
          foregroundColor: ColorName.darkOnPrimary,
          disabledBackgroundColor: ColorName.darkPrimary.withOpacity(0.5),
          iconSize: 24,
        ),
      );
}
