part of main;

class FeedController {
  final PostService postService;

  FeedController(this.postService);

  index() async {
    List<Post> posts = await postService.loadPosts();

    var rssEntries = posts.map((Post p) {
      return new RssEntry.fromPost(p);
    });

    return template('rss')
      ..title = 'Blog @ stacktrace.ca'
      ..subtitle = 'Latest posts'
      ..url = 'http://stacktrace.ca/feed'
      ..author = 'Joel Trottier-Hebert'
      ..tag = 'feed:stacktrace.ca,blog:/feed'
      ..entries = rssEntries;
  }
}
