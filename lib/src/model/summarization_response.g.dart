// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summarization_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummarizationResponse _$SummarizationResponseFromJson(
        Map<String, dynamic> json) =>
    SummarizationResponse(
      meta: RequestMetadata.fromJson(json['meta'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : SummarizationData.fromJson(json['data'] as Map<String, dynamic>),
      error: (json['error'] as List<dynamic>?)
              ?.map((e) => KagiError.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SummarizationResponseToJson(
        SummarizationResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'error': instance.error,
    };

SummarizationData _$SummarizationDataFromJson(Map<String, dynamic> json) =>
    SummarizationData(
      output: json['output'] as String?,
      tokens: json['tokens'] as int,
    );

Map<String, dynamic> _$SummarizationDataToJson(SummarizationData instance) =>
    <String, dynamic>{
      'output': instance.output,
      'tokens': instance.tokens,
    };
