part of app;

class PostService {
  final MarkdownFetcher markdownFetcher;

  PostService(this.markdownFetcher);

  Future<List<String>> loadPosts() async {
    var posts = await markdownFetcher.loadMarkdownFiles();
    var htmlPosts = posts.map((String rawPost) => markdownToHtml(rawPost));

    return htmlPosts;
  }
}
