part of app;

class Metadata {
  String title;
  String description;
  List<String> keywords = [];
  DateTime updatedDate;
  OpenGraph openGraph;

  Metadata.fromMap(Map json) {
    title = json['title'];
    description = json['description'];
    keywords = json['keywords'];
    updatedDate = json['updated_date'];
    openGraph = new OpenGraph.fromMap(json['opengraph']);
  }
}

class OpenGraph {
  String imageWidth;
  String imageHeight;
  String imageUrl;

  OpenGraph.fromMap(Map json) {
    imageHeight = json['imageHeight'];
    imageWidth = json['imageWidth'];
    imageUrl = json['imageUrl'];
  }
}
