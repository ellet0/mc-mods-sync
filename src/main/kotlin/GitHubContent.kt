import kotlinx.serialization.Serializable

@Serializable
data class GitHubContent(
    val _links: Links,
    val download_url: String?,
    val git_url: String,
    val html_url: String,
    val name: String,
    val path: String,
    val sha: String,
    val size: Long,
    val type: String,
    val url: String
)

@Serializable
data class Links(
    val git: String,
    val html: String,
    val self: String
)