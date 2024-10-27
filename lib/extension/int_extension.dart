extension IntExtension on int {
  /// 数値を適切なフォーマットに変換
  ///
  /// 1000以下 - そのままの値を文字列に変換し返却
  /// 10000以下 or 10000以上 - 小数点第一 + 0は切り捨てとし返却する
  /// ※ 利用用途として、限定されたメソッド内のみとなるため、条件となる数値を直に記述
  String formatNumber() {
    if (this < 1000) {
      return toString();
    }
    if (this < 10000) {
      return '${(this / 1000).toStringAsFixed(1).replaceAll('.0', '')}k';
    }
    return '${(this / 10000).toStringAsFixed(1).replaceAll('.0', '')}k';
  }
}
