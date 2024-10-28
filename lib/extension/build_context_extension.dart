import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  /// ThemeオブジェクトをContextからアクセスさせるためのプロパティ
  ThemeData get theme => Theme.of(this);
}
