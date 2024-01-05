// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kagi_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KagiResponse<T> _$KagiResponseFromJson<T extends KagiData>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    KagiResponse<T>(
      meta: RequestMetadata.fromJson(json['meta'] as Map<String, dynamic>),
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      error: (json['error'] as List<dynamic>?)
              ?.map((e) => KagiError.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$KagiResponseToJson<T extends KagiData>(
  KagiResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'error': instance.error,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
