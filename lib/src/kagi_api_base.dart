import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kagi_api/src/model/constant/enrichment_type.dart';
import 'package:kagi_api/src/model/fast_gpt_response.dart';
import 'package:kagi_api/src/model/search_response.dart';
import 'package:kagi_api/src/model/summarization_response.dart';
import 'package:kagi_api/src/model/constant/token_type.dart';

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

  /// Summarize something
  ///
  /// Parameters [url] and [text] are exclusive. You must pass one or the other.
  ///
  /// Total request size is limited to 1MB.
  /// 
  /// Arguments are purposely left as strings instead of enums to allow for use
  /// of future values without updating this package.
  Future<SummarizationResponse> summarize({
    /// A URL to a document to summarize. Exclusive with text.
    String? url,

    /// Text to summarize. Exclusive with url.
    String? text,

    /// See [SummarizationEngine]
    String? engine,

    /// See [SummaryType]
    String? summaryType,

    /// [Desired output language](https://help.kagi.com/kagi/api/summarizer.html#target-language-codes)
    String? targetLanguage,

    /// Whether to allow cached requests & responses. (default is true)
    bool? cache,
  }) async {
    assert(url != null || text != null);

    final response = await _client.post(
      Uri.https(_authority, '$_basePath/summarize'),
      headers: _headers,
      body: jsonEncode({
        if (url != null) 'url': url,
        if (text != null) 'text': text,
        if (engine != null) 'engine': engine,
        if (summaryType != null) 'summary_type': summaryType,
        if (targetLanguage != null) 'target_language': targetLanguage,
        if (cache != null) 'cache': cache,
      }),
    );

    final json = jsonDecode(response.body);
    return SummarizationResponse.fromJson(json);
  }

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

  /// Enrichment API
  Future<SearchResponse> enrich({
    required String query,
    EnrichmentType type = EnrichmentType.web,
  }) async {
    final response = await _client.get(
      Uri.https(_authority, '$_basePath/enrich/$type', {'q': query}),
      headers: _headers,
    );

    final json = jsonDecode(response.body);
    return SearchResponse.fromJson(json);
  }
}
