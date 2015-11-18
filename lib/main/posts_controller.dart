part of main;

class PostsController {
  final PostService postService;

  PostsController(this.postService);

  updateSeoTags([Post post]) {
    if (post == null) {}
  }

  index() async {
    var posts = await postService.loadPosts();

    return template('index')
      ..posts = posts
      ..seo = new Seo.withDefaultValues();
  }

  show({String id}) async {
    var post = await postService.getPostBySlug(id);

    if (post == null) {
      throw new Exception("Post not found");
    }

    var seo = new Seo.fromPost(post);

    return template('show').withScript('posts_script')
      ..post = post
      ..seo = seo;
  }

  seotest() async {
    List<Post> posts = await postService.loadPosts();

    var rssEntries = posts.map((Post p) {
      return new RssEntry.fromPost(p);
    });

    var rssTemplate = await (template('rss')
      ..title = 'Blog @ stacktrace.ca'
      ..subtitle = 'Latest posts'
      ..url = 'http://stacktrace.ca/feed'
      ..author = 'Joel Trottier-Hebert'
      ..tag = 'feed:stacktrace.ca,blog:/feed'
      ..entries = rssEntries);

    return new shelf.Response.seeOther('http://google.ca', body: await rssTemplate.parsed, headers:  {
      'content-type': 'application/atom+xml'
    }, encoding: UTF8);
  }
}
