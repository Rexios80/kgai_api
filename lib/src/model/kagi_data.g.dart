// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kagi_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
