part of app;

class PostService {
  Future<List<Post>> loadPosts() async {
    var resources = posts_index.resources;
    List<Post> posts = [];

    await Future.forEach(resources, (List tuple) async {
      var markdownResource = tuple[0];
      var metadataResource = tuple[1];

      var metaDataAsYaml = await metadataResource.readAsString();
      var yaml = loadYaml(metaDataAsYaml);
      var metadata = new Metadata.fromMap(yaml);

      var post = new Post()
        ..content = markdownToHtml(await markdownResource.readAsString())
        ..metadata = metadata;

      posts.add(post);
    });

    return posts;
  }
}
