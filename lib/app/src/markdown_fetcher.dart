part of app;

class MarkdownFetcher {
  Future<Map<String, String>> loadMarkdownFiles() async {
    var resourceDirectory = Directory.current;

    var fsEntities = resourceDirectory.list();
    Map<String, String> markdownFiles = {};

    await for (FileSystemEntity entity in fsEntities) {
      if (entity.path.endsWith('.md')) {
        var fileNameWithoutExtension = entity.path.split('.').first;

        var fileToRead = new File(entity.path);

        markdownFiles[fileNameWithoutExtension] =
            await fileToRead.readAsString();
      }
    }

    return markdownFiles;
  }
}
