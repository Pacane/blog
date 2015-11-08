part of main;

/// This is a controller. You can inject classes just by declaring the
/// type of an argument. You can do this both in the constructor and
/// in the methods.
class PostsController {
  final PostService postService;

  PostsController(this.postService) {}

  updateSeoTags([Post post]) {
    if (post == null) {}
  }

  index() async {
    var posts = await postService.loadPosts();

    return template('index')..posts = posts;
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
}
