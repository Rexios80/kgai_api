import 'package:json_annotation/json_annotation.dart';
import 'package:kagi_api/src/model/kagi_error.dart';
import 'package:kagi_api/src/model/kagi_response.dart';
import 'package:kagi_api/src/model/request_metadata.dart';

part 'search_response.g.dart';

/// A response from the Search API
@JsonSerializable(createToJson: false)
class SearchResponse extends KagiResponse<SearchData> {
  /// Constructor
  const SearchResponse({
    required super.meta,
    super.data,
    super.error,
  });

  /// From json
  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}

/// Data returned by the Kagi Search API
class SearchData {
  /// The search results
  final List<SearchResult> results;

  /// Related searches
  final List<String> related;

  /// Constructor
  const SearchData({
    required this.results,
    required this.related,
  });

  /// From json
  factory SearchData.fromJson(List<Map<String, dynamic>> json) {
    final data = SearchData(results: [], related: []);
    for (final item in json) {
      switch (item['t']) {
        case 0:
          data.results.add(SearchResult.fromJson(item));
        case 1:
          data.related.addAll(item['list']);
      }
    }
    return data;
  }
}

/// A search result
@JsonSerializable()
class SearchResult {
  /// Result rank
  final int? rank;

  /// URL
  final String url;

  /// Result title
  final String title;

  /// Result snippet
  final String? snippet;

  /// When the result was published, if known
  final DateTime? published;

  /// An image associated with the result
  final SearchResultThumbnail? thumbnail;

  /// Constructor
  const SearchResult({
    this.rank,
    required this.url,
    required this.title,
    this.snippet,
    this.published,
    this.thumbnail,
  });

  /// From json
  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);

  /// To json
  Map<String, dynamic> toJson() => _$SearchResultToJson(this);
}

/// An image associated with a search result
@JsonSerializable()
class SearchResultThumbnail {
  /// [proxied image URL](https://help.kagi.com/kagi/api/intro/image-proxy-urls.html)
  final String url;

  /// Image height
  final int height;

  /// Image width
  final int width;

  /// Constructor
  const SearchResultThumbnail({
    required this.url,
    required this.height,
    required this.width,
  });

  /// From json
  factory SearchResultThumbnail.fromJson(Map<String, dynamic> json) =>
      _$SearchResultThumbnailFromJson(json);

  /// To json
  Map<String, dynamic> toJson() => _$SearchResultThumbnailToJson(this);
}
