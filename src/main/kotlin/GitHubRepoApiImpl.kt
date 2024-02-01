
import io.ktor.client.*
import io.ktor.client.call.*
import io.ktor.client.request.*

class GitHubRepoApiImpl(
    private val httpClient: HttpClient
): GitHubRepoApi {
    override suspend fun getRepoFiles(repoOwner: String, repoName: String): List<GitHubContent> {
        return httpClient.get("https://api.github.com/repos/${repoOwner}/${repoName}/contents/").body()
    }
}