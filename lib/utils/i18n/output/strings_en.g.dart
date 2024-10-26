///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsEn implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEn _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsSearchEn search = _TranslationsSearchEn._(_root);
	@override late final _TranslationsDebugEn debug = _TranslationsDebugEn._(_root);
	@override late final _TranslationsErrorEn error = _TranslationsErrorEn._(_root);
}

// Path: search
class _TranslationsSearchEn implements TranslationsSearchJa {
	_TranslationsSearchEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Search';
	@override String get empty => 'Please enter the name of the repository to search';
	@override late final _TranslationsSearchCardEn card = _TranslationsSearchCardEn._(_root);
}

// Path: debug
class _TranslationsDebugEn implements TranslationsDebugJa {
	_TranslationsDebugEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debug Features';
	@override late final _TranslationsDebugRepositorySearchEn repositorySearch = _TranslationsDebugRepositorySearchEn._(_root);
}

// Path: error
class _TranslationsErrorEn implements TranslationsErrorJa {
	_TranslationsErrorEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get common => 'An error has occurred';
	@override String get caption => 'Please try again in an environment with a good connection.\nIf the issue persists, contact the administrator.';
	@override late final _TranslationsErrorApiExceptionEn apiException = _TranslationsErrorApiExceptionEn._(_root);
}

// Path: search.card
class _TranslationsSearchCardEn implements TranslationsSearchCardJa {
	_TranslationsSearchCardEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get star => 'Star';
	@override String get fork => 'Fork';
	@override String get issue => 'Issue';
	@override String get watch => 'Watch';
}

// Path: debug.repositorySearch
class _TranslationsDebugRepositorySearchEn implements TranslationsDebugRepositorySearchJa {
	_TranslationsDebugRepositorySearchEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Repository Search';
}

// Path: error.apiException
class _TranslationsErrorApiExceptionEn implements TranslationsErrorApiExceptionJa {
	_TranslationsErrorApiExceptionEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsErrorApiExceptionBadRequestEn badRequest = _TranslationsErrorApiExceptionBadRequestEn._(_root);
	@override late final _TranslationsErrorApiExceptionUnauthorizedEn unauthorized = _TranslationsErrorApiExceptionUnauthorizedEn._(_root);
	@override late final _TranslationsErrorApiExceptionForbiddenEn forbidden = _TranslationsErrorApiExceptionForbiddenEn._(_root);
	@override late final _TranslationsErrorApiExceptionNotFoundEn notFound = _TranslationsErrorApiExceptionNotFoundEn._(_root);
	@override late final _TranslationsErrorApiExceptionUnprocessableEntityEn unprocessableEntity = _TranslationsErrorApiExceptionUnprocessableEntityEn._(_root);
	@override late final _TranslationsErrorApiExceptionTooManyRequestsEn tooManyRequests = _TranslationsErrorApiExceptionTooManyRequestsEn._(_root);
	@override late final _TranslationsErrorApiExceptionOtherEn other = _TranslationsErrorApiExceptionOtherEn._(_root);
	@override late final _TranslationsErrorApiExceptionServiceUnavailableEn serviceUnavailable = _TranslationsErrorApiExceptionServiceUnavailableEn._(_root);
}

// Path: error.apiException.badRequest
class _TranslationsErrorApiExceptionBadRequestEn implements TranslationsErrorApiExceptionBadRequestJa {
	_TranslationsErrorApiExceptionBadRequestEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Bad Request';
	@override String get description => 'An error occurred due to an invalid request.';
}

// Path: error.apiException.unauthorized
class _TranslationsErrorApiExceptionUnauthorizedEn implements TranslationsErrorApiExceptionUnauthorizedJa {
	_TranslationsErrorApiExceptionUnauthorizedEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Unauthorized';
	@override String get description => 'The request is unauthorized.';
}

// Path: error.apiException.forbidden
class _TranslationsErrorApiExceptionForbiddenEn implements TranslationsErrorApiExceptionForbiddenJa {
	_TranslationsErrorApiExceptionForbiddenEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Forbidden';
	@override String get description => 'You do not have permission to access this content.';
}

// Path: error.apiException.notFound
class _TranslationsErrorApiExceptionNotFoundEn implements TranslationsErrorApiExceptionNotFoundJa {
	_TranslationsErrorApiExceptionNotFoundEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Not Found';
	@override String get description => 'The server could not find the requested resource.';
}

// Path: error.apiException.unprocessableEntity
class _TranslationsErrorApiExceptionUnprocessableEntityEn implements TranslationsErrorApiExceptionUnprocessableEntityJa {
	_TranslationsErrorApiExceptionUnprocessableEntityEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Validation Error';
	@override String get description => 'The request could not be validated properly.';
}

// Path: error.apiException.tooManyRequests
class _TranslationsErrorApiExceptionTooManyRequestsEn implements TranslationsErrorApiExceptionTooManyRequestsJa {
	_TranslationsErrorApiExceptionTooManyRequestsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Too Many Requests';
	@override String get description => 'The request limit has been exceeded.';
}

// Path: error.apiException.other
class _TranslationsErrorApiExceptionOtherEn implements TranslationsErrorApiExceptionOtherJa {
	_TranslationsErrorApiExceptionOtherEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Communication Error';
	@override String get description => 'A communication error has occurred.';
}

// Path: error.apiException.serviceUnavailable
class _TranslationsErrorApiExceptionServiceUnavailableEn implements TranslationsErrorApiExceptionServiceUnavailableJa {
	_TranslationsErrorApiExceptionServiceUnavailableEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Service Unavailable';
	@override String get description => 'An error occurred on the server side.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'search.title': return 'Search';
			case 'search.empty': return 'Please enter the name of the repository to search';
			case 'search.card.star': return 'Star';
			case 'search.card.fork': return 'Fork';
			case 'search.card.issue': return 'Issue';
			case 'search.card.watch': return 'Watch';
			case 'debug.title': return 'Debug Features';
			case 'debug.repositorySearch.title': return 'Repository Search';
			case 'error.common': return 'An error has occurred';
			case 'error.caption': return 'Please try again in an environment with a good connection.\nIf the issue persists, contact the administrator.';
			case 'error.apiException.badRequest.name': return 'Bad Request';
			case 'error.apiException.badRequest.description': return 'An error occurred due to an invalid request.';
			case 'error.apiException.unauthorized.name': return 'Unauthorized';
			case 'error.apiException.unauthorized.description': return 'The request is unauthorized.';
			case 'error.apiException.forbidden.name': return 'Forbidden';
			case 'error.apiException.forbidden.description': return 'You do not have permission to access this content.';
			case 'error.apiException.notFound.name': return 'Not Found';
			case 'error.apiException.notFound.description': return 'The server could not find the requested resource.';
			case 'error.apiException.unprocessableEntity.name': return 'Validation Error';
			case 'error.apiException.unprocessableEntity.description': return 'The request could not be validated properly.';
			case 'error.apiException.tooManyRequests.name': return 'Too Many Requests';
			case 'error.apiException.tooManyRequests.description': return 'The request limit has been exceeded.';
			case 'error.apiException.other.name': return 'Communication Error';
			case 'error.apiException.other.description': return 'A communication error has occurred.';
			case 'error.apiException.serviceUnavailable.name': return 'Service Unavailable';
			case 'error.apiException.serviceUnavailable.description': return 'An error occurred on the server side.';
			default: return null;
		}
	}
}

