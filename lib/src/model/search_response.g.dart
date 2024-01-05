// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    SearchResponse(
      meta: RequestMetadata.fromJson(json['meta'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : SearchData.fromJson((json['data'] as List<dynamic>)
              .map((e) => e as Map<String, dynamic>)
              .toList()),
      error: (json['error'] as List<dynamic>?)
              ?.map((e) => KagiError.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) => SearchResult(
      rank: json['rank'] as int?,
      url: json['url'] as String,
      title: json['title'] as String,
      snippet: json['snippet'] as String?,
      published: json['published'] == null
          ? null
          : DateTime.parse(json['published'] as String),
      thumbnail: json['thumbnail'] == null
          ? null
          : SearchResultThumbnail.fromJson(
              json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'url': instance.url,
      'title': instance.title,
      'snippet': instance.snippet,
      'published': instance.published?.toIso8601String(),
      'thumbnail': instance.thumbnail,
    };

SearchResultThumbnail _$SearchResultThumbnailFromJson(
        Map<String, dynamic> json) =>
    SearchResultThumbnail(
      url: json['url'] as String,
      height: json['height'] as int,
      width: json['width'] as int,
    );

Map<String, dynamic> _$SearchResultThumbnailToJson(
        SearchResultThumbnail instance) =>
    <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };
