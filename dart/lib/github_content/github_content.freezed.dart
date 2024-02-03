// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubContent _$GitHubContentFromJson(Map<String, dynamic> json) {
  return _GitHubContent.fromJson(json);
}

/// @nodoc
mixin _$GitHubContent {
  @JsonKey(name: '_links')
  Links get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'download_url')
  String? get downloadUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'git_url')
  String get gitUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get sha => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubContentCopyWith<GitHubContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubContentCopyWith<$Res> {
  factory $GitHubContentCopyWith(
          GitHubContent value, $Res Function(GitHubContent) then) =
      _$GitHubContentCopyWithImpl<$Res, GitHubContent>;
  @useResult
  $Res call(
      {@JsonKey(name: '_links') Links links,
      @JsonKey(name: 'download_url') String? downloadUrl,
      @JsonKey(name: 'git_url') String gitUrl,
      @JsonKey(name: 'html_url') String htmlUrl,
      String name,
      String path,
      String sha,
      int size,
      String type,
      String url});

  $LinksCopyWith<$Res> get links;
}

/// @nodoc
class _$GitHubContentCopyWithImpl<$Res, $Val extends GitHubContent>
    implements $GitHubContentCopyWith<$Res> {
  _$GitHubContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? links = null,
    Object? downloadUrl = freezed,
    Object? gitUrl = null,
    Object? htmlUrl = null,
    Object? name = null,
    Object? path = null,
    Object? sha = null,
    Object? size = null,
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      downloadUrl: freezed == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gitUrl: null == gitUrl
          ? _value.gitUrl
          : gitUrl // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      sha: null == sha
          ? _value.sha
          : sha // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res> get links {
    return $LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GitHubContentImplCopyWith<$Res>
    implements $GitHubContentCopyWith<$Res> {
  factory _$$GitHubContentImplCopyWith(
          _$GitHubContentImpl value, $Res Function(_$GitHubContentImpl) then) =
      __$$GitHubContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_links') Links links,
      @JsonKey(name: 'download_url') String? downloadUrl,
      @JsonKey(name: 'git_url') String gitUrl,
      @JsonKey(name: 'html_url') String htmlUrl,
      String name,
      String path,
      String sha,
      int size,
      String type,
      String url});

  @override
  $LinksCopyWith<$Res> get links;
}

/// @nodoc
class __$$GitHubContentImplCopyWithImpl<$Res>
    extends _$GitHubContentCopyWithImpl<$Res, _$GitHubContentImpl>
    implements _$$GitHubContentImplCopyWith<$Res> {
  __$$GitHubContentImplCopyWithImpl(
      _$GitHubContentImpl _value, $Res Function(_$GitHubContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? links = null,
    Object? downloadUrl = freezed,
    Object? gitUrl = null,
    Object? htmlUrl = null,
    Object? name = null,
    Object? path = null,
    Object? sha = null,
    Object? size = null,
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_$GitHubContentImpl(
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      downloadUrl: freezed == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gitUrl: null == gitUrl
          ? _value.gitUrl
          : gitUrl // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      sha: null == sha
          ? _value.sha
          : sha // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitHubContentImpl implements _GitHubContent {
  const _$GitHubContentImpl(
      {@JsonKey(name: '_links') required this.links,
      @JsonKey(name: 'download_url') required this.downloadUrl,
      @JsonKey(name: 'git_url') required this.gitUrl,
      @JsonKey(name: 'html_url') required this.htmlUrl,
      required this.name,
      required this.path,
      required this.sha,
      required this.size,
      required this.type,
      required this.url});

  factory _$GitHubContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitHubContentImplFromJson(json);

  @override
  @JsonKey(name: '_links')
  final Links links;
  @override
  @JsonKey(name: 'download_url')
  final String? downloadUrl;
  @override
  @JsonKey(name: 'git_url')
  final String gitUrl;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @override
  final String name;
  @override
  final String path;
  @override
  final String sha;
  @override
  final int size;
  @override
  final String type;
  @override
  final String url;

  @override
  String toString() {
    return 'GitHubContent(links: $links, downloadUrl: $downloadUrl, gitUrl: $gitUrl, htmlUrl: $htmlUrl, name: $name, path: $path, sha: $sha, size: $size, type: $type, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubContentImpl &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.gitUrl, gitUrl) || other.gitUrl == gitUrl) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.sha, sha) || other.sha == sha) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, links, downloadUrl, gitUrl,
      htmlUrl, name, path, sha, size, type, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitHubContentImplCopyWith<_$GitHubContentImpl> get copyWith =>
      __$$GitHubContentImplCopyWithImpl<_$GitHubContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitHubContentImplToJson(
      this,
    );
  }
}

abstract class _GitHubContent implements GitHubContent {
  const factory _GitHubContent(
      {@JsonKey(name: '_links') required final Links links,
      @JsonKey(name: 'download_url') required final String? downloadUrl,
      @JsonKey(name: 'git_url') required final String gitUrl,
      @JsonKey(name: 'html_url') required final String htmlUrl,
      required final String name,
      required final String path,
      required final String sha,
      required final int size,
      required final String type,
      required final String url}) = _$GitHubContentImpl;

  factory _GitHubContent.fromJson(Map<String, dynamic> json) =
      _$GitHubContentImpl.fromJson;

  @override
  @JsonKey(name: '_links')
  Links get links;
  @override
  @JsonKey(name: 'download_url')
  String? get downloadUrl;
  @override
  @JsonKey(name: 'git_url')
  String get gitUrl;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl;
  @override
  String get name;
  @override
  String get path;
  @override
  String get sha;
  @override
  int get size;
  @override
  String get type;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$GitHubContentImplCopyWith<_$GitHubContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
mixin _$Links {
  String get git => throw _privateConstructorUsedError;
  String get html => throw _privateConstructorUsedError;
  String get self => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res, Links>;
  @useResult
  $Res call({String git, String html, String self});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res, $Val extends Links>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? git = null,
    Object? html = null,
    Object? self = null,
  }) {
    return _then(_value.copyWith(
      git: null == git
          ? _value.git
          : git // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      self: null == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinksImplCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$LinksImplCopyWith(
          _$LinksImpl value, $Res Function(_$LinksImpl) then) =
      __$$LinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String git, String html, String self});
}

/// @nodoc
class __$$LinksImplCopyWithImpl<$Res>
    extends _$LinksCopyWithImpl<$Res, _$LinksImpl>
    implements _$$LinksImplCopyWith<$Res> {
  __$$LinksImplCopyWithImpl(
      _$LinksImpl _value, $Res Function(_$LinksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? git = null,
    Object? html = null,
    Object? self = null,
  }) {
    return _then(_$LinksImpl(
      git: null == git
          ? _value.git
          : git // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      self: null == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinksImpl implements _Links {
  const _$LinksImpl(
      {required this.git, required this.html, required this.self});

  factory _$LinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinksImplFromJson(json);

  @override
  final String git;
  @override
  final String html;
  @override
  final String self;

  @override
  String toString() {
    return 'Links(git: $git, html: $html, self: $self)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinksImpl &&
            (identical(other.git, git) || other.git == git) &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.self, self) || other.self == self));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, git, html, self);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      __$$LinksImplCopyWithImpl<_$LinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinksImplToJson(
      this,
    );
  }
}

abstract class _Links implements Links {
  const factory _Links(
      {required final String git,
      required final String html,
      required final String self}) = _$LinksImpl;

  factory _Links.fromJson(Map<String, dynamic> json) = _$LinksImpl.fromJson;

  @override
  String get git;
  @override
  String get html;
  @override
  String get self;
  @override
  @JsonKey(ignore: true)
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
