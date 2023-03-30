import 'package:http/http.dart' as http;

class HttpService {
  // post
  Future<http.Response> post(
    Uri uri, {
    Map<String, String>? headers,
    required String body,
  }) async {
    return await http.post(
      uri,
      headers: headers,
      body: body,
    );
  }

  // get
  Future<http.Response> get(
    Uri uri, {
    Map<String, String>? headers,
  }) async {
    return await http.get(
      uri,
      headers: headers,
    );
  }

  // put
}
