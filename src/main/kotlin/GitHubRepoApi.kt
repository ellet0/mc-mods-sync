interface GitHubRepoApi {
    suspend fun getRepoFiles(repoOwner: String, repoName: String): List<GitHubContent>
}