import 'dart:io' show Directory, File, exit;

import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

import 'github_repo_api.dart';
import 'github_repo_api_impl.dart';

GitHubRepoApi githubRepoApi = GitHubRepoApiImpl();

Future<void> main(List<String> args) async {
  final repoOwnerName = args.elementAtOrNull(0) ??
      (throw ArgumentError('The repo owner name is required.'));
  final repoName = args.elementAtOrNull(1) ??
      (throw ArgumentError('The repo name is required.'));

  final isShouldDeleteOldMods = bool.parse(args.elementAtOrNull(2) ?? 'true');

  final currentDirectory = Directory.current.path;
  print(currentDirectory);
  final modsFolder = Directory(path.join(currentDirectory, 'mods'));

  if (!(await modsFolder.exists())) {
    print('Please create mods folder first');
    exit(1);
  }

  final modsFiles = modsFolder.listSync();
  prettyPrintList(
      modsFiles.map((e) => e.uri.pathSegments.last), 'Current mods:');

  final contents = (await githubRepoApi.getRepoFiles(
          repoOwner: repoOwnerName, repoName: repoName))
      .where((content) => content.downloadUrl != null);
  prettyPrintList(contents.map((e) => e.downloadUrl), 'Download urls:');

  final modsFileNames = contents.map((e) => path.basename(e.downloadUrl ?? ''));
  prettyPrintList(modsFileNames, 'Mods names:');

  for (final modFile in modsFiles) {
    // Delete unused/old mods if the user want to
    if (!modsFileNames.contains(path.basename(modFile.path)) &&
        isShouldDeleteOldMods) {
      print(
          " * Deleting the $modFile as it's not needed anymore, it's not in the mods");
      await modFile.delete();
    }
  }

  for (final content in contents) {
    final fileName = path.basename(content.downloadUrl ?? '');
    final file = File(path.join(modsFolder.path, fileName));
    if (await file.exists()) {
      final fileLength = await file.length();
      if (content.size == fileLength) {
        print(
            ' - The file: $fileName exists with correct size, ${content.size} == $fileLength is true, skip to the next mod');
        continue;
      }
      print(
          ' - The file $fileName exists but the size is not matched (${content.size} == $fileLength is false, we will delete it and re-download it');
      await file.delete();
    }
    print('Downloading $fileName from ${content.downloadUrl}');
    final responseBytes = (await http.get(Uri.parse(
            content.downloadUrl ?? (throw Exception('Download url is null')))))
        .bodyBytes;
    await file.writeAsBytes(responseBytes);
  }

  print('Done syncing mods!');
  exit(0);
}

/// Simple print list to log
void prettyPrintList<T>(Iterable<T> list, String message) {
  print('\n$message');
  for (final item in list) {
    print(' - $item');
  }
  print('\n');
}
