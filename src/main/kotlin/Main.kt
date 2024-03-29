
import io.ktor.client.*
import io.ktor.client.engine.okhttp.*
import io.ktor.client.plugins.*
import io.ktor.client.plugins.contentnegotiation.*
import io.ktor.client.request.*
import io.ktor.client.statement.*
import io.ktor.serialization.kotlinx.json.*
import io.ktor.util.*
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.runBlocking
import kotlinx.serialization.json.Json
import java.io.File
import java.net.URL
import kotlin.system.exitProcess

val httpClient = HttpClient(OkHttp) {
    install(ContentNegotiation) {
        json(Json {
            ignoreUnknownKeys = true
            prettyPrint = true
        })
        install(HttpTimeout) {
            connectTimeoutMillis = 0
            requestTimeoutMillis = 0
            socketTimeoutMillis = 0
        }
    }
}
val githubRepoApi: GitHubRepoApi = GitHubRepoApiImpl(httpClient)

fun main(args: Array<String>): Unit = runBlocking(Dispatchers.IO) {

    val repoOwnerName = args.getOrNull(0) ?: throw IllegalArgumentException("The repo owner name is required.")
    val repoName = args.getOrNull(1) ?: throw IllegalArgumentException("The repo name is required.")
    val isShouldDeleteOldMods = args.getOrNull(2)?.toBooleanStrictOrNull() ?: true

    val currentDirectory = System.getProperty("user.dir")
    val modsFolder = File(currentDirectory, "mods")
    if (!modsFolder.exists()) {
        println("Please create mods folder first")
        exitProcess(1)
    }

    val modsFiles = modsFolder.listFiles() ?: throw Exception("Could not list files of the mods folder")
    prettyPrintList(modsFiles.map { it.name }, "Current mods:")

    val contents =
        githubRepoApi.getRepoFiles(repoOwnerName, repoName).filter { it.downloadUrl != null }
    prettyPrintList(contents.map { it.downloadUrl }, "Download urls:")

    val modsFileNames = contents.map { getFileNameFromUrl(it.downloadUrl ?: "") }
    prettyPrintList(modsFileNames, "Mods names:")

    for (modFile in modsFiles) {
        // Delete unused/old mods if the user want to
        if (!modsFileNames.contains(modFile.name) && isShouldDeleteOldMods) {
            println(" * Deleting the $modFile as it's not needed anymore, it's not in the mods")
            modFile.delete()
        }
    }

    for (content in contents) {
        val fileName = getFileNameFromUrl(content.downloadUrl ?: "")
        val file = File(modsFolder, fileName)
        if (file.exists()) {
            val fileLength = file.length()
            if (content.size == fileLength) {
                println(" - The file: $fileName exists with correct size, ${content.size} == $fileLength is true, skip to the next mod")
                continue
            }
            println(" - The file $fileName exists but the size is not matched (${content.size} == $fileLength is false, we will delete it and re-download it")
            file.delete()
//            val fileHash = calculateSHA256(file)
//            if (fileHash == content.sha) {
//                println(" - The file: $fileName exists with correct hash (${fileHash}), skip to the next file")
//                continue
//            }
//            println(" - The file $fileName exists but the hash is not matched (the local one is $fileHash and the one from cloud is ${content.sha}), we will delete it and re-download it")
//            file.delete()
        }
        println("Downloading $fileName from ${content.downloadUrl}")
        val responseBytes =
            httpClient.get(content.downloadUrl ?: throw NullPointerException("Download url is null")).bodyAsChannel()
                .toByteArray()
        file.writeBytes(responseBytes)
    }

    println("Done syncing mods!")
    exitProcess(0)
}


/**
 * Simple print list to log
 * */
fun <T> prettyPrintList(list: List<T>, message: String) {
    println("\n${message}")
    list.forEach {
        println(" - $it")
    }
    println("\n")
}

fun getFileNameFromUrl(url: String): String {
    return URL(url).file.substringAfterLast('/')
}