import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/api_exception.g.dart';

@riverpod
ApiException apiException(Ref ref, {required int statucCode}) =>
    switch (statucCode) {
      400 => BadRequest(),
      401 => Unauthorized(),
      402 => Forbidden(),
      404 => NotFound(),
      422 => UnprocessableEntity(),
      429 => TooManyRequests(),
      _ => Other(),
    };

sealed class ApiException implements Exception {}

final class BadRequest extends ApiException {}

final class Unauthorized extends ApiException {}

final class Forbidden extends ApiException {}

final class NotFound extends ApiException {}

final class UnprocessableEntity extends ApiException {}

final class TooManyRequests extends ApiException {}

final class Other extends ApiException {}
