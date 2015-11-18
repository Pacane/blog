library main;

import 'package:bridge/bridge.dart';
import 'package:shelf/shelf.dart' as shelf;
import '../app.dart';
import 'dart:convert';

/// Controllers
part 'posts_controller.dart';
part 'feed_controller.dart';

/// This is the entry point to the transport layer of the application.
/// It's where tether calls and HTTP routes are delegated to controllers.
///
/// Note that the same controller instance will be used for all requests.
class Main {
  PostsController postsController;
  FeedController feedController;

  Main(this.postsController, this.feedController);

  routes(Router router) {
    router.get('/favicon.ico', () => '');

    router.get('/feed', feedController.index);
    router.get('/posts', postsController.index).named('index');

    router.get('/', postsController.index).named('index');

    router.get('/seotest', postsController.seotest).named('seotest');

    router.get('/:id', postsController.show).named('show');
  }
}
