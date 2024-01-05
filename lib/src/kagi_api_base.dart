import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kagi_api/src/model/kagi_data.dart';
import 'package:kagi_api/src/model/kagi_response.dart';
import 'package:kagi_api/src/model/token_type.dart';

class Kagi {
  static const _apiVersion = 'v0';
  static const _api = 'https://kagi.com/api/$_apiVersion';

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

  Future<KagiResponse<FastGptAnswer>> fastGpt({
    required String query,
    bool cache = true,
  }) async {
    final response = await _client.post(
      Uri.parse('$_api/fastgpt'),
      headers: _headers,
      body: jsonEncode({
        'query': query,
        'cache': cache,
      }),
    );

    final json = jsonDecode(response.body);
    return KagiResponse<FastGptAnswer>.fromJson(json);
  }
}
