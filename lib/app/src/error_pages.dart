part of app;

/// Turns a [Template] containing a 'code' integer field in the
/// data map, into a [shelf.Response]
shelf.Response errorTemplate(Template template) {
  return new shelf.Response(
      template.data.containsKey('code') ? template.data['code'] : 500,
      body: template.encoded,
      headers: {'Content-Type': ContentType.HTML.toString()});
}

class PageNotFoundException implements Exception {
  const PageNotFoundException();
  String toString() => 'Page not found exception';
}

TemplateBuilder notFoundTemplate(
        {Exception exception: const PageNotFoundException(),
        StackTrace stack}) =>
    createErrorTemplateWithSeo()
      ..withData({
        'exception': exception,
        'message': 'Oops! That page wasn\'t found!',
        'code': 404,
      });

TemplateBuilder internalErrorTemplate(
        {Exception exception: const PageNotFoundException(),
        StackTrace stack}) =>
    createErrorTemplateWithSeo()
      ..withData({'exception': exception, 'stackTrace': stack, 'code': 500,});

TemplateBuilder createErrorTemplateWithSeo() =>
    template('error')..seo = new Seo.withDefaultValues();
