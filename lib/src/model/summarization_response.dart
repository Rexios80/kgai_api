import 'package:json_annotation/json_annotation.dart';
import 'package:kagi_api/kagi_api.dart';

part 'summarization_response.g.dart';

/// A response from the Summarization API
@JsonSerializable()
class SummarizationResponse extends KagiResponse<SummarizationData> {
  /// Constructor
  const SummarizationResponse({
    required super.meta,
    super.data,
    super.error,
  });

  /// From json
  factory SummarizationResponse.fromJson(Map<String, dynamic> json) =>
      _$SummarizationResponseFromJson(json);

  /// To json
  Map<String, dynamic> toJson() => _$SummarizationResponseToJson(this);
}

/// Data returned by the Kagi Summarization API
@JsonSerializable()
class SummarizationData {
  /// Summarization output
  final String? output;

  /// Amount of tokens processed
  final int tokens;

  /// Constructor
  const SummarizationData({
    required this.output,
    required this.tokens,
  });

  /// From json
  factory SummarizationData.fromJson(Map<String, dynamic> json) =>
      _$SummarizationDataFromJson(json);

  /// To json
  Map<String, dynamic> toJson() => _$SummarizationDataToJson(this);
}
