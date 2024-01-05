import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kagi_api/src/model/fast_gpt_response.dart';
import 'package:kagi_api/src/model/search_response.dart';
import 'package:kagi_api/src/model/token_type.dart';

/// Access to the Kagi API
class Kagi {
  static const _apiVersion = 'v0';
  static const _authority = 'kagi.com';
  static const _basePath = '/api/$_apiVersion';

  final _client = http.Client();

  final Map<String, String> _headers;

  /// Constructor
  Kagi({
    TokenType tokenType = TokenType.bot,
    required String token,
  }) : _headers = {
          'Authorization': '$tokenType $token',
          'Content-Type': 'application/json',
        };

  /// Ask FastGPT to answer a [query]
  Future<FastGptResponse> fastGpt({required String query, bool? cache}) async {
    final response = await _client.post(
      Uri.https(_authority, '$_basePath/fastgpt'),
      headers: _headers,
      body: jsonEncode({
        'query': query,
        if (cache != null) 'cache': cache,
      }),
    );

    final json = jsonDecode(response.body);
    return FastGptResponse.fromJson(json);
  }

  /// Perform a Kagi search
  Future<SearchResponse> search({required String query, int? limit}) async {
    final response = await _client.get(
      Uri.https(_authority, '$_basePath/search', {
        'q': query,
        if (limit != null) 'limit': limit,
      }),
      headers: _headers,
    );

    final json = jsonDecode(response.body);
    return SearchResponse.fromJson(json);
  }
}
