
import 'github_content/github_content.dart';

abstract class GitHubRepoApi {
  Future<Iterable<GitHubContent>> getRepoFiles({required String repoOwner, required String repoName});
}