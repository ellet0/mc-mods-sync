import 'dart:convert' show jsonDecode;

import 'package:http/http.dart' as http;

import 'github_content/github_content.dart';
import 'github_repo_api.dart';

class GitHubRepoApiImpl implements GitHubRepoApi {
  @override
  Future<Iterable<GitHubContent>> getRepoFiles({required String repoOwner, required String repoName}) async {
    final response = await http.get(Uri.parse('https://api.github.com/repos/$repoOwner/$repoName/contents/'));
    return (jsonDecode(response.body) as List<dynamic>).map((e) => GitHubContent.fromJson(e));
  }
  
}