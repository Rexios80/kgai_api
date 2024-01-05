import 'package:json_annotation/json_annotation.dart';

part 'request_metadata.g.dart';

/// Metadata about the request
@JsonSerializable()
class RequestMetadata {
  final String id;
  final String node;
  final int ms;
  @JsonKey(name: 'api_balance')
  final double apiBalance;

  /// Constructor
  const RequestMetadata({
    required this.id,
    required this.node,
    required this.ms,
    required this.apiBalance,
  });

  /// From json
  factory RequestMetadata.fromJson(Map<String, dynamic> json) =>
      _$RequestMetadataFromJson(json);

  /// To json
  Map<String, dynamic> toJson() => _$RequestMetadataToJson(this);
}
