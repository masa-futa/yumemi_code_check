part of 'custom_theme.dart';

/// IconButton Theme
/// context.themeにて分岐しColorを指定していたが、正常に読み込まれないため、
/// ライトモード . ダークモードで利用するメソッドを分割し利用
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
