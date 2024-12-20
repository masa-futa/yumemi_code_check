// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchModelImpl _$$SearchModelImplFromJson(Map<String, dynamic> json) =>
    _$SearchModelImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => SearchItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchModelImplToJson(_$SearchModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$SearchItemImpl _$$SearchItemImplFromJson(Map<String, dynamic> json) =>
    _$SearchItemImpl(
      fullName: json['full_name'] as String?,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      language: json['language'] as String?,
      watchersCount: (json['watchers_count'] as num).toInt(),
      forksCount: (json['forks_count'] as num).toInt(),
      openIssuesCount: (json['open_issues_count'] as num).toInt(),
      stargazersCount: (json['stargazers_count'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchItemImplToJson(_$SearchItemImpl instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'owner': instance.owner,
      'language': instance.language,
      'watchers_count': instance.watchersCount,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.openIssuesCount,
      'stargazers_count': instance.stargazersCount,
    };

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'avatar_url': instance.avatarUrl,
    };
