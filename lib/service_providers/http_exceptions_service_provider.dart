part of services;

/// This service provider is dedicated to creating pretty feedback to the client
/// when exceptions are thrown in the HTTP layer.
///
/// If this is not using the template function to return templates from
/// [bridge.view], the [DependsOn] annotation can be removed.
@DependsOn(ViewServiceProvider)
class HttpExceptionsServiceProvider extends ServiceProvider {
  load(Server server) async {
    // This is the global exception handler. It must be registered first.
    server.handleException(Object, globalHandler);

    // Subsequent handlers should go from unspecific to specific exceptions.
    // In other words: base classes first, sub classes last.
    server.handleException(HttpNotFoundException, notFoundHandler);
  }

  Future<shelf.Response> notFoundHandler(
      Exception exception, StackTrace stack) async {
    return errorTemplate(
        await notFoundTemplate(exception: exception, stack: stack));
  }

  Future<shelf.Response> globalHandler(
      Object exception, StackTrace stack) async {
    return errorTemplate(
        await internalErrorTemplate(exception: exception, stack: stack));
  }
}
