import 'package:json_annotation/json_annotation.dart';
import 'package:kagi_api/kagi_api.dart';
import 'package:kagi_api/src/model/kagi_response.dart';

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
  final String output;

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

/// Summary types
sealed class SummaryType {
  SummaryType._();

  /// Paragraph(s) of summary prose
  ///
  /// The default summary type
  static const summary = 'summary';

  /// Bulleted list of key points
  static const takeaway = 'takeaway';
}

/// Summarization engines
sealed class SummarizationEngine {
  SummarizationEngine._();

  /// Friendly, descriptive, fast summary
  ///
  /// The default engine
  static const cecil = 'cecil';

  /// Formal, technical, analytical summary
  static const agnes = 'agnes';

  /// Informal, creative, friendly summary
  static const daphne = 'daphne';

  /// Best-in-class summary using our enterprise-grade model
  ///
  /// WARNING: THIS IS EXPENSIVE
  static const muriel = 'muriel';
}
