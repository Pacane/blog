part of app;

updatePosts(List<Post> posts) {
  postsBySlug.clear();

  posts.forEach((Post p) {
    postsBySlug[p.metadata.slug] = p;
  });
}

Map<String, Post> postsBySlug = {};
