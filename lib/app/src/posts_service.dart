part of app;

class PostService {
  final MarkdownFetcher markdownFetcher;

  PostService(this.markdownFetcher);

  Future<List<Post>> loadPosts() async {
    var resources = posts_index.resources;
    List<Post> posts = [];

    resources.forEach((List tuple) async {
      var markdownResource = tuple[0];
      var metadataResource = tuple[1];

      var metaDataAsYaml = await metadataResource.readAsString();
      var yaml = loadYaml(metaDataAsYaml);
      var metadata = new Metadata()
        ..title = yaml['title']
        ..description = yaml['description']
        ..keywords = yaml['keywords']
        ..openGraph = yaml['opengraph']
        ..description = yaml['description'];

      var post = new Post()
        ..content = markdownToHtml(await markdownResource.readAsString())
        ..metadata = metadata;

      posts.add(post);
    });

    return posts;
  }
}
