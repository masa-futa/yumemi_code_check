// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../search_query_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchQueryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AsyncValue<List<SearchViewState>> searchModel)
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AsyncValue<List<SearchViewState>> searchModel)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AsyncValue<List<SearchViewState>> searchModel)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchQueryStateCopyWith<$Res> {
  factory $SearchQueryStateCopyWith(
          SearchQueryState value, $Res Function(SearchQueryState) then) =
      _$SearchQueryStateCopyWithImpl<$Res, SearchQueryState>;
}

/// @nodoc
class _$SearchQueryStateCopyWithImpl<$Res, $Val extends SearchQueryState>
    implements $SearchQueryStateCopyWith<$Res> {
  _$SearchQueryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchQueryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$SearchQueryStateCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchQueryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'SearchQueryState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AsyncValue<List<SearchViewState>> searchModel)
        search,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AsyncValue<List<SearchViewState>> searchModel)? search,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AsyncValue<List<SearchViewState>> searchModel)? search,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Search value) search,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Search value)? search,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements SearchQueryState {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AsyncValue<List<SearchViewState>> searchModel});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$SearchQueryStateCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchQueryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchModel = null,
  }) {
    return _then(_$SearchImpl(
      searchModel: null == searchModel
          ? _value.searchModel
          : searchModel // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SearchViewState>>,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl(
      {this.searchModel = const AsyncValue<List<SearchViewState>>.loading()});

  @override
  @JsonKey()
  final AsyncValue<List<SearchViewState>> searchModel;

  @override
  String toString() {
    return 'SearchQueryState.search(searchModel: $searchModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.searchModel, searchModel) ||
                other.searchModel == searchModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchModel);

  /// Create a copy of SearchQueryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(AsyncValue<List<SearchViewState>> searchModel)
        search,
  }) {
    return search(searchModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(AsyncValue<List<SearchViewState>> searchModel)? search,
  }) {
    return search?.call(searchModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(AsyncValue<List<SearchViewState>> searchModel)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(searchModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SearchQueryState {
  const factory _Search({final AsyncValue<List<SearchViewState>> searchModel}) =
      _$SearchImpl;

  AsyncValue<List<SearchViewState>> get searchModel;

  /// Create a copy of SearchQueryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchViewState {
// リポジトリ名
  String get fullName => throw _privateConstructorUsedError; // オーナーアイコン
  String get avatarUrl => throw _privateConstructorUsedError; // 言語
  String get language => throw _privateConstructorUsedError; // Watcher数
  String get watchersCount => throw _privateConstructorUsedError; // Fork数
  String get forksCount => throw _privateConstructorUsedError; // Issue数
  String get openIssuesCount => throw _privateConstructorUsedError; // スター数
  String get stargazersCount => throw _privateConstructorUsedError;

  /// Create a copy of SearchViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchViewStateCopyWith<SearchViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchViewStateCopyWith<$Res> {
  factory $SearchViewStateCopyWith(
          SearchViewState value, $Res Function(SearchViewState) then) =
      _$SearchViewStateCopyWithImpl<$Res, SearchViewState>;
  @useResult
  $Res call(
      {String fullName,
      String avatarUrl,
      String language,
      String watchersCount,
      String forksCount,
      String openIssuesCount,
      String stargazersCount});
}

/// @nodoc
class _$SearchViewStateCopyWithImpl<$Res, $Val extends SearchViewState>
    implements $SearchViewStateCopyWith<$Res> {
  _$SearchViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? avatarUrl = null,
    Object? language = null,
    Object? watchersCount = null,
    Object? forksCount = null,
    Object? openIssuesCount = null,
    Object? stargazersCount = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as String,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as String,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchViewStateImplCopyWith<$Res>
    implements $SearchViewStateCopyWith<$Res> {
  factory _$$SearchViewStateImplCopyWith(_$SearchViewStateImpl value,
          $Res Function(_$SearchViewStateImpl) then) =
      __$$SearchViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullName,
      String avatarUrl,
      String language,
      String watchersCount,
      String forksCount,
      String openIssuesCount,
      String stargazersCount});
}

/// @nodoc
class __$$SearchViewStateImplCopyWithImpl<$Res>
    extends _$SearchViewStateCopyWithImpl<$Res, _$SearchViewStateImpl>
    implements _$$SearchViewStateImplCopyWith<$Res> {
  __$$SearchViewStateImplCopyWithImpl(
      _$SearchViewStateImpl _value, $Res Function(_$SearchViewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? avatarUrl = null,
    Object? language = null,
    Object? watchersCount = null,
    Object? forksCount = null,
    Object? openIssuesCount = null,
    Object? stargazersCount = null,
  }) {
    return _then(_$SearchViewStateImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as String,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as String,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchViewStateImpl implements _SearchViewState {
  const _$SearchViewStateImpl(
      {required this.fullName,
      required this.avatarUrl,
      required this.language,
      required this.watchersCount,
      required this.forksCount,
      required this.openIssuesCount,
      required this.stargazersCount});

// リポジトリ名
  @override
  final String fullName;
// オーナーアイコン
  @override
  final String avatarUrl;
// 言語
  @override
  final String language;
// Watcher数
  @override
  final String watchersCount;
// Fork数
  @override
  final String forksCount;
// Issue数
  @override
  final String openIssuesCount;
// スター数
  @override
  final String stargazersCount;

  @override
  String toString() {
    return 'SearchViewState(fullName: $fullName, avatarUrl: $avatarUrl, language: $language, watchersCount: $watchersCount, forksCount: $forksCount, openIssuesCount: $openIssuesCount, stargazersCount: $stargazersCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchViewStateImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.openIssuesCount, openIssuesCount) ||
                other.openIssuesCount == openIssuesCount) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName, avatarUrl, language,
      watchersCount, forksCount, openIssuesCount, stargazersCount);

  /// Create a copy of SearchViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchViewStateImplCopyWith<_$SearchViewStateImpl> get copyWith =>
      __$$SearchViewStateImplCopyWithImpl<_$SearchViewStateImpl>(
          this, _$identity);
}

abstract class _SearchViewState implements SearchViewState {
  const factory _SearchViewState(
      {required final String fullName,
      required final String avatarUrl,
      required final String language,
      required final String watchersCount,
      required final String forksCount,
      required final String openIssuesCount,
      required final String stargazersCount}) = _$SearchViewStateImpl;

// リポジトリ名
  @override
  String get fullName; // オーナーアイコン
  @override
  String get avatarUrl; // 言語
  @override
  String get language; // Watcher数
  @override
  String get watchersCount; // Fork数
  @override
  String get forksCount; // Issue数
  @override
  String get openIssuesCount; // スター数
  @override
  String get stargazersCount;

  /// Create a copy of SearchViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchViewStateImplCopyWith<_$SearchViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
