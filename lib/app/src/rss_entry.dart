part of app;

class RssEntry {
  String title;
  String url;
  DateTime updatedDate;
  String summary;

  RssEntry();

  RssEntry.fromPost(Post post) {
    title = post.metadata.title;
    url = 'http://stacktrace.ca/${post.metadata.slug}';
    updatedDate = post.metadata.updatedDate;
    summary = post.metadata.description;
  }
}
