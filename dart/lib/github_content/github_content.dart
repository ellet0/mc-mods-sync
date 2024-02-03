// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_content.freezed.dart';
part 'github_content.g.dart';

@freezed
class GitHubContent with _$GitHubContent {
  const factory GitHubContent({
    @JsonKey(name: '_links')
     required Links links,
    @JsonKey(name: 'download_url')
    required String? downloadUrl,
    @JsonKey(name: 'git_url')
    required String gitUrl,
    @JsonKey(name: 'html_url')
    required String htmlUrl,
    required String name,
    required String path,
    required String sha,
    required int size,
    required String type,
    required String url,
  }) = _GitHubContent;

  factory GitHubContent.fromJson(Map<String, Object?> json) => _$GitHubContentFromJson(json);
}

@freezed
class Links with _$Links {
  const factory Links({
    required String git,
    required String html,
    required String self,
  }) = _Links;

  factory Links.fromJson(Map<String, Object?> json) => _$LinksFromJson(json);
}