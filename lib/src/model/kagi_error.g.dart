// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kagi_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KagiError _$KagiErrorFromJson(Map<String, dynamic> json) => KagiError(
      code: json['code'] as int,
      msg: json['msg'] as String,
      ref: json['ref'],
    );

Map<String, dynamic> _$KagiErrorToJson(KagiError instance) => <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'ref': instance.ref,
    };
