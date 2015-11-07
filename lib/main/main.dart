library main;

import 'dart:async';

import 'package:bridge/bridge.dart';
import '../app.dart';

/// Controllers
part 'posts_controller.dart';

/// This is the entry point to the transport layer of the application.
/// It's where tether calls and HTTP routes are delegated to controllers.
///
/// Note that the same controller instance will be used for all requests.
class Main {
  PostsController postsController;

  Main(this.postsController);

  routes(Router router) {
    router.get('/', postsController.index).named('index');
    router.get('posts', postsController.index).named('index');
  }

  tether(Tether tether, TetherManager tethers) {
  }
}
