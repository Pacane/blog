part of app;

class MarkdownFetcher {
  Future<List<String>> loadMarkdownFiles() async {
    var resource = new Resource('package:app/app/resources/2015-01-01.md');
    var resource2 = new Resource('package:app/app/resources/2015-01-02.md');
    var content = await resource.readAsString();
    var content2 = await resource2.readAsString();

    return [content, content2];
  }
}
