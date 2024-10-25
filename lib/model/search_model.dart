import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yumemi_code_check/model/model.dart';

part 'generated/search_model.freezed.dart';
part 'generated/search_model.g.dart';

@freezed
class SearchModel extends Model with _$SearchModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SearchModel({
    // スター数
    required int totalCount,
    required List<SearchItem> items,
  }) = _SearchModel;

  factory SearchModel.fromJson(Map<String, dynamic> json) =>
      _$SearchModelFromJson(json);
}

@freezed
class SearchItem with _$SearchItem {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SearchItem({
    // リポジトリ名
    required String? fullName,
    required Owner owner,
    // 言語
    required String? language,
    // Watcher数
    required int watchersCount,
    // Fork数
    required int forksCount,
    // Issue数
    required int openIssuesCount,
  }) = _SearchItem;

  factory SearchItem.fromJson(Map<String, dynamic> json) =>
      _$SearchItemFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner({
    // オーナーアイコン
    required String? avatarUrl,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}

