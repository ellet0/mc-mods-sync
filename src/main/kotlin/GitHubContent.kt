import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class GitHubContent(
    @SerialName("_links")
    val links: Links,
    @SerialName("download_url")
    val downloadUrl: String?,
    @SerialName("git_url")
    val gitUrl: String,
    @SerialName("html_url")
    val htmlUrl: String,
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