part of app;

class RssEntry {
  String title;
  String url;
  String tag;
  DateTime updatedDate;
  String summary;

  RssEntry();

  RssEntry.fromPost(Post post) {
    title = post.metadata.title;
    url = 'http://stacktrace.ca/${post.metadata.slug}';
    tag = 'tag:stacktrace.ca,${post.metadata.publishedDate}';
    updatedDate = post.metadata.updatedDate;
    summary = post.metadata.description;
  }
}
