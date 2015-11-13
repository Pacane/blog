import "dart:html";
import 'package:app/app_client/hljs.dart' as hljs;

///This the example boilerplate of a client script file. Inject this
/// script into a template by using the following syntax in a controller.
///
///     return template('templateName').withScript('main');
///
/// A good practice would be to delegate the client script into your client
/// application in **lib/client** as neatly as possible.
///

main() async {
  querySelectorAll("pre").forEach((e) => hljs.highlightBlock(e));
}
