// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitHubContentImpl _$$GitHubContentImplFromJson(Map<String, dynamic> json) =>
    _$GitHubContentImpl(
      links: Links.fromJson(json['_links'] as Map<String, dynamic>),
      downloadUrl: json['download_url'] as String?,
      gitUrl: json['git_url'] as String,
      htmlUrl: json['html_url'] as String,
      name: json['name'] as String,
      path: json['path'] as String,
      sha: json['sha'] as String,
      size: json['size'] as int,
      type: json['type'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$GitHubContentImplToJson(_$GitHubContentImpl instance) =>
    <String, dynamic>{
      '_links': instance.links,
      'download_url': instance.downloadUrl,
      'git_url': instance.gitUrl,
      'html_url': instance.htmlUrl,
      'name': instance.name,
      'path': instance.path,
      'sha': instance.sha,
      'size': instance.size,
      'type': instance.type,
      'url': instance.url,
    };

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
      git: json['git'] as String,
      html: json['html'] as String,
      self: json['self'] as String,
    );

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) =>
    <String, dynamic>{
      'git': instance.git,
      'html': instance.html,
      'self': instance.self,
    };
