/// This is the main application library.
library app;

// The shared application library
export '../app_shared/library.dart';

import 'dart:core';
import 'dart:io';
import 'dart:async';

import 'package:markdown/markdown.dart';
import 'package:yaml/yaml.dart';
import 'package:intl/intl.dart';
import 'package:app/app/resources/posts_index.dart' as posts_index;
import 'package:slugify/slugify.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:bridge/bridge.dart';

part 'src/posts_service.dart';
part 'src/metadata.dart';
part 'src/post.dart';
part 'src/post_repository.dart';
part 'src/seo.dart';
part 'src/rss_entry.dart';
part 'src/error_pages.dart';
