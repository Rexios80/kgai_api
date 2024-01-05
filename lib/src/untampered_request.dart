import 'dart:convert';

import 'package:http/http.dart' as http;

/// A request that ensures the `Content-Type` header is not tampered with by
/// the underlying `http` package when setting the body
///
/// This should be removed when the Kagi API no longer requires this
Future<http.Response> untamperedRequest(
  http.Client client,
  String method,
  Uri uri, {
  required Map<String, String> headers,
  required Map<String, dynamic> body,
}) async {
  final request = http.Request(method, uri);
  // Setting the body tampers with the content-type header, so set it first
  request.body = jsonEncode(body);
  request.headers.addAll(headers);

  final stream = await client.send(request);
  return http.Response.fromStream(stream);
}
