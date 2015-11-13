part of app;

class Seo {
  String title = 'Blog - stacktrace.ca';
  String type = 'website';
  String description =
      'Joel Trottier-Hebert (Pacane) - Personal programming blog, ideas and '
      'examples written in Dart';
  String url = 'http://stacktrace.ca';
  String image = 'https://www.dartlang.org/imgs/dart-logo-wordmark-1200w.png';

  Seo.fromPost(Post p) {
    title = p.metadata.title;
    type = 'article';
    description = p.metadata.description;
    url = 'http://stacktrace.ca/${p.metadata.slug}';
    image = p.metadata.openGraph.imageUrl;
  }

  Seo.withDefaultValues();
}
