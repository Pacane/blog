library post_index;

const String resourceDirectoryName = 'package:app/app/resources/';

class Resource {
  final String path;

  Resource(this.path);
}

List<Resource> createResource(String postName) {
  return [
    new Resource('$resourceDirectoryName$postName.md'),
    new Resource('$resourceDirectoryName$postName.yaml')
  ];
}

List<List<Resource>> resources = [
  createResource('2015_11_13_getting_started_with_Dart'),
  createResource('2015_11_14_creating_a_project'),
  createResource('2015_11_20_shelf'),
  createResource('2016_02_11_dogma'),
];
