// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas

part of 'fast_gpt_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FastGptResponse _$FastGptResponseFromJson(Map<String, dynamic> json) =>
    FastGptResponse(
      meta: RequestMetadata.fromJson(json['meta'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : FastGptAnswer.fromJson(json['data'] as Map<String, dynamic>),
      error: (json['error'] as List<dynamic>?)
              ?.map((e) => KagiError.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FastGptResponseToJson(FastGptResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'error': instance.error,
    };

FastGptAnswer _$FastGptAnswerFromJson(Map<String, dynamic> json) =>
    FastGptAnswer(
      output: json['output'] as String,
      references: (json['references'] as List<dynamic>)
          .map((e) => FastGptReference.fromJson(e as Map<String, dynamic>))
          .toList(),
      tokens: json['tokens'] as int,
    );

Map<String, dynamic> _$FastGptAnswerToJson(FastGptAnswer instance) =>
    <String, dynamic>{
      'output': instance.output,
      'references': instance.references,
      'tokens': instance.tokens,
    };

FastGptReference _$FastGptReferenceFromJson(Map<String, dynamic> json) =>
    FastGptReference(
      title: json['title'] as String,
      snippet: json['snippet'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$FastGptReferenceToJson(FastGptReference instance) =>
    <String, dynamic>{
      'title': instance.title,
      'snippet': instance.snippet,
      'url': instance.url,
    };
