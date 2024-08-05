class GetLastPageHelper {
  static int getPageNumber(String url) {
    Uri uri = Uri.parse('http://example.com' + url);
    String? page = uri.queryParameters['page'];
    return page != null ? int.parse(page) : 0;
  }
}
