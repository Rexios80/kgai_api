// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas

part of 'request_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestMetadata _$RequestMetadataFromJson(Map<String, dynamic> json) =>
    RequestMetadata(
      id: json['id'] as String,
      node: json['node'] as String,
      ms: json['ms'] as int,
      apiBalance: (json['api_balance'] as num).toDouble(),
    );

Map<String, dynamic> _$RequestMetadataToJson(RequestMetadata instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node': instance.node,
      'ms': instance.ms,
      'api_balance': instance.apiBalance,
    };
