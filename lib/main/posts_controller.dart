part of main;

/// This is a controller. You can inject classes just by declaring the
/// type of an argument. You can do this both in the constructor and
/// in the methods.
class PostsController {
  final PostService postService;

  PostsController(this.postService) {
  }

  index() async {
    var posts = await postService.loadPosts();

    print(posts);

    return template('index').withScript('posts_script')
    ..posts = posts;
  }
}
