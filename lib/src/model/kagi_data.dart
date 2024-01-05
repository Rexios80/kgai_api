import 'package:json_annotation/json_annotation.dart';
import 'package:kagi_api/src/model/fast_gpt_reference.dart';

part 'kagi_data.g.dart';

/// Base class for all Kagi responses
sealed class KagiData {
  const KagiData();

  /// To json
  Map<String, dynamic> toJson();
}

/// A response from the FastGPT API
@JsonSerializable()
class FastGptAnswer extends KagiData {
  /// Answer output
  final String output;

  /// The search results that are referred in the answer.
  final List<FastGptReference> references;

  /// Amount of tokens processed
  final int tokens;

  /// Constructor
  const FastGptAnswer({
    required this.output,
    required this.references,
    required this.tokens,
  });

  /// From json
  factory FastGptAnswer.fromJson(Map<String, dynamic> json) =>
      _$FastGptAnswerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FastGptAnswerToJson(this);
}
