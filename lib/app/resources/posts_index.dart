library post_index;

const String resourceDirectoryName = 'package:app/app/resources/';

List<Resource> createResource(String postName) {
  return [
    new Resource('$resourceDirectoryName$postName.md'),
    new Resource('$resourceDirectoryName$postName.yaml')
  ];
}

List<List<Resource>> resources = [
  createResource('2015_01_01_dart_tests'),
  createResource('2015_01_02_refactoring_in_dart')
];
