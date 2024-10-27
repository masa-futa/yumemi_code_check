///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsJa = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final i18n = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final TranslationsSearchJa search = TranslationsSearchJa._(_root);
	late final TranslationsDebugJa debug = TranslationsDebugJa._(_root);
	late final TranslationsErrorJa error = TranslationsErrorJa._(_root);
}

// Path: search
class TranslationsSearchJa {
	TranslationsSearchJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => '検索';
	String get initial => '検索するRepository名を入力してください';
	String get empty => '検索結果が見つかりません';
	late final TranslationsSearchCardJa card = TranslationsSearchCardJa._(_root);
}

// Path: debug
class TranslationsDebugJa {
	TranslationsDebugJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'デバッグ機能';
	late final TranslationsDebugRepositorySearchJa repositorySearch = TranslationsDebugRepositorySearchJa._(_root);
}

// Path: error
class TranslationsErrorJa {
	TranslationsErrorJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get common => 'エラーが発生しました';
	String get caption => '通信環境の良い環境で再度やり直すか\n復旧しない場合、管理者にお問い合わせください。';
	late final TranslationsErrorApiExceptionJa apiException = TranslationsErrorApiExceptionJa._(_root);
}

// Path: search.card
class TranslationsSearchCardJa {
	TranslationsSearchCardJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get star => 'Star';
	String get fork => 'Fork';
	String get issue => 'Issue';
	String get watch => 'Watch';
}

// Path: debug.repositorySearch
class TranslationsDebugRepositorySearchJa {
	TranslationsDebugRepositorySearchJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'リポジトリ検索';
}

// Path: error.apiException
class TranslationsErrorApiExceptionJa {
	TranslationsErrorApiExceptionJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsErrorApiExceptionBadRequestJa badRequest = TranslationsErrorApiExceptionBadRequestJa._(_root);
	late final TranslationsErrorApiExceptionUnauthorizedJa unauthorized = TranslationsErrorApiExceptionUnauthorizedJa._(_root);
	late final TranslationsErrorApiExceptionForbiddenJa forbidden = TranslationsErrorApiExceptionForbiddenJa._(_root);
	late final TranslationsErrorApiExceptionNotFoundJa notFound = TranslationsErrorApiExceptionNotFoundJa._(_root);
	late final TranslationsErrorApiExceptionUnprocessableEntityJa unprocessableEntity = TranslationsErrorApiExceptionUnprocessableEntityJa._(_root);
	late final TranslationsErrorApiExceptionTooManyRequestsJa tooManyRequests = TranslationsErrorApiExceptionTooManyRequestsJa._(_root);
	late final TranslationsErrorApiExceptionOtherJa other = TranslationsErrorApiExceptionOtherJa._(_root);
	late final TranslationsErrorApiExceptionServiceUnavailableJa serviceUnavailable = TranslationsErrorApiExceptionServiceUnavailableJa._(_root);
}

// Path: error.apiException.badRequest
class TranslationsErrorApiExceptionBadRequestJa {
	TranslationsErrorApiExceptionBadRequestJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => '不正なリクエスト';
	String get description => '無効なリクエストを実施したためエラーが発生しました。';
}

// Path: error.apiException.unauthorized
class TranslationsErrorApiExceptionUnauthorizedJa {
	TranslationsErrorApiExceptionUnauthorizedJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => '未認証';
	String get description => 'リクエストは未認証です。';
}

// Path: error.apiException.forbidden
class TranslationsErrorApiExceptionForbiddenJa {
	TranslationsErrorApiExceptionForbiddenJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => '権限';
	String get description => 'コンテンツにアクセスする権限がありません。';
}

// Path: error.apiException.notFound
class TranslationsErrorApiExceptionNotFoundJa {
	TranslationsErrorApiExceptionNotFoundJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => '未検出';
	String get description => 'サーバーはリクエストされたリソースを見つけられませんでした。';
}

// Path: error.apiException.unprocessableEntity
class TranslationsErrorApiExceptionUnprocessableEntityJa {
	TranslationsErrorApiExceptionUnprocessableEntityJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => '検証エラー';
	String get description => 'リクエストを正しく検証できませんでした。';
}

// Path: error.apiException.tooManyRequests
class TranslationsErrorApiExceptionTooManyRequestsJa {
	TranslationsErrorApiExceptionTooManyRequestsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'リクエスト過多';
	String get description => 'リクエストが超過しました。';
}

// Path: error.apiException.other
class TranslationsErrorApiExceptionOtherJa {
	TranslationsErrorApiExceptionOtherJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => '通信エラー';
	String get description => '通信エラーが発生しました。';
}

// Path: error.apiException.serviceUnavailable
class TranslationsErrorApiExceptionServiceUnavailableJa {
	TranslationsErrorApiExceptionServiceUnavailableJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'サービス利用不可';
	String get description => 'サーバー側でエラーが発生しました。';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'search.title': return '検索';
			case 'search.initial': return '検索するRepository名を入力してください';
			case 'search.empty': return '検索結果が見つかりません';
			case 'search.card.star': return 'Star';
			case 'search.card.fork': return 'Fork';
			case 'search.card.issue': return 'Issue';
			case 'search.card.watch': return 'Watch';
			case 'debug.title': return 'デバッグ機能';
			case 'debug.repositorySearch.title': return 'リポジトリ検索';
			case 'error.common': return 'エラーが発生しました';
			case 'error.caption': return '通信環境の良い環境で再度やり直すか\n復旧しない場合、管理者にお問い合わせください。';
			case 'error.apiException.badRequest.name': return '不正なリクエスト';
			case 'error.apiException.badRequest.description': return '無効なリクエストを実施したためエラーが発生しました。';
			case 'error.apiException.unauthorized.name': return '未認証';
			case 'error.apiException.unauthorized.description': return 'リクエストは未認証です。';
			case 'error.apiException.forbidden.name': return '権限';
			case 'error.apiException.forbidden.description': return 'コンテンツにアクセスする権限がありません。';
			case 'error.apiException.notFound.name': return '未検出';
			case 'error.apiException.notFound.description': return 'サーバーはリクエストされたリソースを見つけられませんでした。';
			case 'error.apiException.unprocessableEntity.name': return '検証エラー';
			case 'error.apiException.unprocessableEntity.description': return 'リクエストを正しく検証できませんでした。';
			case 'error.apiException.tooManyRequests.name': return 'リクエスト過多';
			case 'error.apiException.tooManyRequests.description': return 'リクエストが超過しました。';
			case 'error.apiException.other.name': return '通信エラー';
			case 'error.apiException.other.description': return '通信エラーが発生しました。';
			case 'error.apiException.serviceUnavailable.name': return 'サービス利用不可';
			case 'error.apiException.serviceUnavailable.description': return 'サーバー側でエラーが発生しました。';
			default: return null;
		}
	}
}

