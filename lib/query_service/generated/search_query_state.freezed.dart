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
  AsyncValue<SearchModel> get searchModel => throw _privateConstructorUsedError;

  /// Create a copy of SearchQueryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchQueryStateCopyWith<SearchQueryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchQueryStateCopyWith<$Res> {
  factory $SearchQueryStateCopyWith(
          SearchQueryState value, $Res Function(SearchQueryState) then) =
      _$SearchQueryStateCopyWithImpl<$Res, SearchQueryState>;
  @useResult
  $Res call({AsyncValue<SearchModel> searchModel});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchModel = null,
  }) {
    return _then(_value.copyWith(
      searchModel: null == searchModel
          ? _value.searchModel
          : searchModel // ignore: cast_nullable_to_non_nullable
              as AsyncValue<SearchModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchQueryStateImplCopyWith<$Res>
    implements $SearchQueryStateCopyWith<$Res> {
  factory _$$SearchQueryStateImplCopyWith(_$SearchQueryStateImpl value,
          $Res Function(_$SearchQueryStateImpl) then) =
      __$$SearchQueryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<SearchModel> searchModel});
}

/// @nodoc
class __$$SearchQueryStateImplCopyWithImpl<$Res>
    extends _$SearchQueryStateCopyWithImpl<$Res, _$SearchQueryStateImpl>
    implements _$$SearchQueryStateImplCopyWith<$Res> {
  __$$SearchQueryStateImplCopyWithImpl(_$SearchQueryStateImpl _value,
      $Res Function(_$SearchQueryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchQueryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchModel = null,
  }) {
    return _then(_$SearchQueryStateImpl(
      searchModel: null == searchModel
          ? _value.searchModel
          : searchModel // ignore: cast_nullable_to_non_nullable
              as AsyncValue<SearchModel>,
    ));
  }
}

/// @nodoc

class _$SearchQueryStateImpl implements _SearchQueryState {
  const _$SearchQueryStateImpl(
      {this.searchModel = const AsyncValue<SearchModel>.loading()});

  @override
  @JsonKey()
  final AsyncValue<SearchModel> searchModel;

  @override
  String toString() {
    return 'SearchQueryState(searchModel: $searchModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQueryStateImpl &&
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
  _$$SearchQueryStateImplCopyWith<_$SearchQueryStateImpl> get copyWith =>
      __$$SearchQueryStateImplCopyWithImpl<_$SearchQueryStateImpl>(
          this, _$identity);
}

abstract class _SearchQueryState implements SearchQueryState {
  const factory _SearchQueryState({final AsyncValue<SearchModel> searchModel}) =
      _$SearchQueryStateImpl;

  @override
  AsyncValue<SearchModel> get searchModel;

  /// Create a copy of SearchQueryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchQueryStateImplCopyWith<_$SearchQueryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
