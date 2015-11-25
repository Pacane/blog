This is my personal blog. It was made with Dart and [Bridge](http://github.com/dart-bridge/framework).

## Development

To run this locally, you have to:
 
* Have [Dart installed](http://stacktrace.ca/getting-started-with-dart)
* Get all dependencies via `pub get`
* Run the project from the command line : `dart bridge start, watch`
* (Optional) I'm coding with `sass`, so if you want your changes to be displayed on refresh, have another tab running this `sass --watch web/css web/css`
* View the result in Dartium @ `http://localhost:1337`

## Production

If you want to deploy it for production :

* Use `dart bridge build, exit` 
* and then `dart bridge start --production`. This will trigger the `dart2js` transformer and compile the whole thing to JavaScript.
* You can then view the result in any browser @ `http://address-where-it-is-hosted:1337`
* (Optional) You can then proxy this app to port 80 using `proxy_pass` on nginx, or Apache.
