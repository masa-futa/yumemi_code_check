import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_code_check/utils/i18n/output/strings.g.dart';

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
      503 => ServiceUnavailable(),
      _ => Other(),
    };

/// アプリ内で利用するExceptionクラス
sealed class ApiException implements Exception {
  String get name;

  String get description;
}

final class BadRequest extends ApiException {
  @override
  String get name => i18n.error.apiException.badRequest.name;

  @override
  String get description => i18n.error.apiException.badRequest.description;
}

final class Unauthorized extends ApiException {
  @override
  String get name => i18n.error.apiException.unauthorized.name;

  @override
  String get description => i18n.error.apiException.unauthorized.description;
}

final class Forbidden extends ApiException {
  @override
  String get name => i18n.error.apiException.forbidden.name;

  @override
  String get description => i18n.error.apiException.forbidden.description;
}

final class NotFound extends ApiException {
  @override
  String get name => i18n.error.apiException.notFound.name;

  @override
  String get description => i18n.error.apiException.notFound.description;
}

final class UnprocessableEntity extends ApiException {
  @override
  String get name => i18n.error.apiException.unprocessableEntity.name;

  @override
  String get description =>
      i18n.error.apiException.unprocessableEntity.description;
}

final class TooManyRequests extends ApiException {
  @override
  String get name => i18n.error.apiException.tooManyRequests.name;

  @override
  String get description => i18n.error.apiException.tooManyRequests.description;
}

final class Other extends ApiException {
  @override
  String get name => i18n.error.apiException.other.name;

  @override
  String get description => i18n.error.apiException.other.description;
}

final class ServiceUnavailable extends ApiException {
  @override
  String get name => i18n.error.apiException.serviceUnavailable.name;

  @override
  String get description =>
      i18n.error.apiException.serviceUnavailable.description;
}
