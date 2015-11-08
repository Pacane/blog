/// This is the main application library.
library app;

// The shared application library
export '../app_shared/library.dart';

import 'dart:io';
import 'dart:core';
import 'dart:async';

import 'package:bridge/bridge.dart';
import 'package:markdown/markdown.dart';
import 'package:yaml/yaml.dart';
import 'package:app/app/resources/posts_index.dart' as posts_index;

part 'src/posts_service.dart';
part 'src/metadata.dart';
part 'src/post.dart';
