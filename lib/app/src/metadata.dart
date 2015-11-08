part of app;

class Metadata {
  String title;
  String description;
  List<String> keywords = [];
  OpenGraph openGraph;
}

class OpenGraph {
  String imageWidth;
  String imageHeight;
  String imageUrl;
}
