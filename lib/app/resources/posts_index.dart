library post_index;

const String resourceDirectoryName = 'package:app/app/resources/';

List<Resource> createResource(String postName) {
  return [
    new Resource('$resourceDirectoryName$postName.md'),
    new Resource('$resourceDirectoryName$postName.yaml')
  ];
}

List<List<Resource>> resources = [
  createResource('2015_11_13_getting_started_with_Dart'),
];
