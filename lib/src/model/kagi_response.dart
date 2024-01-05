import 'package:json_annotation/json_annotation.dart';
import 'package:kagi_api/src/model/kagi_error.dart';
import 'package:kagi_api/src/model/kagi_data.dart';
import 'package:kagi_api/src/model/request_metadata.dart';

part 'kagi_response.g.dart';

/// A response envelope from the Kagi API
@JsonSerializable(genericArgumentFactories: true)
class KagiResponse<T extends KagiData> {
  /// [RequestMetadata]
  final RequestMetadata meta;

  /// Response data. Can be any valid JSON value, as documented
  final T? data;

  /// Error Object, if an error occurred
  final List<KagiError> error;

  /// Constructor
  const KagiResponse({
    required this.meta,
    this.data,
    this.error = const [],
  });

  /// From json
  factory KagiResponse.fromJson(Map<String, dynamic> json) =>
      _$KagiResponseFromJson(json, (data) {
        final json = (data as Map).cast<String, dynamic>();
        return switch (T) {
          FastGptAnswer() => FastGptAnswer.fromJson(json),
          _ => throw ArgumentError('Invalid type'),
        } as T;
      });

  /// To json
  Map<String, dynamic> toJson() =>
      _$KagiResponseToJson(this, (data) => data.toJson());
}
