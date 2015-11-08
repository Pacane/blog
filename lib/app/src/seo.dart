part of app;

class Seo {
  String title;
  String type;
  String description;
  String url;
  String image;

  Seo.fromPost(Post p) {
    title = p.metadata.title;
    type = 'article';
    description = p.metadata.description;
    url = 'http://stacktrace.ca/${p.metadata.slug}';
    image = p.metadata.openGraph.imageUrl;
  }
}
