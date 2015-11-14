part of app;

Slugify _slugify = new Slugify();

class Metadata {
  String title;
  String description;
  List<String> keywords = [];
  DateTime updatedDate;
  DateTime publishedDate;
  OpenGraph openGraph;

  String get slug => _slugify.slugify(title);

  Metadata.fromMap(Map json) {
    title = json['title'];
    description = json['description'];
    keywords = json['keywords'];
    updatedDate = json['updated_date'];
    publishedDate = json['published_date'];
    openGraph = new OpenGraph.fromMap(json['opengraph']);
  }
}

class OpenGraph {
  String imageWidth;
  String imageHeight;
  String imageUrl;

  OpenGraph.fromMap(Map json) {
    Map image = json['image'];

    imageHeight = image['height'];
    imageWidth = image['width'];
    imageUrl = image['url'];
  }
}
