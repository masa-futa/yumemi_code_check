import 'package:yumemi_code_check/data_source/api_exception.dart';

/// sealed classに準拠したResultクラスを生成
sealed class Result<S, E extends ApiException> {
  const Result();
}

/// Resultクラスに準拠したSuccessクラス
final class Success<S, E extends ApiException> extends Result<S, E> {
  const Success(this.value);

  factory Success.noValue() => Success(<S>[] as S);

  final S value;
}

/// Resultクラスに準拠したFailureクラス
final class Failure<S, E extends ApiException> extends Result<S, E> {
  const Failure(this.exception, this.stackTrace);

  final E exception;
  final StackTrace stackTrace;
}