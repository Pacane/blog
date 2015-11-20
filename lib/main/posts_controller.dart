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
      return errorTemplate(await notFoundTemplate());
    }

    var seo = new Seo.fromPost(post);

    return template('show').withScript('posts_script')
      ..post = post
      ..seo = seo;
  }
}
