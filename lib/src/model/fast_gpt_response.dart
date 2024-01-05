import 'package:json_annotation/json_annotation.dart';
import 'package:kagi_api/src/model/kagi_error.dart';
import 'package:kagi_api/src/model/kagi_response.dart';
import 'package:kagi_api/src/model/request_metadata.dart';

part 'fast_gpt_response.g.dart';

/// A response from the FastGPT API
@JsonSerializable()
class FastGptResponse extends KagiResponse<FastGptAnswer> {
  /// Constructor
  const FastGptResponse({
    required super.meta,
    super.data,
    super.error,
  });

  /// From json
  factory FastGptResponse.fromJson(Map<String, dynamic> json) =>
      _$FastGptResponseFromJson(json);

  /// To json
  Map<String, dynamic> toJson() => _$FastGptResponseToJson(this);
}

/// FastGPT answer data
@JsonSerializable()
class FastGptAnswer {
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

  /// To json
  Map<String, dynamic> toJson() => _$FastGptAnswerToJson(this);
}

/// A reference from the FastGPT API
@JsonSerializable()
class FastGptReference {
  /// Title of the referenced search result.
  final String title;

  /// Snippet of the referenced search result.
  final String snippet;

  /// URL of the referenced search result.
  final String url;

  /// Constructor
  const FastGptReference({
    required this.title,
    required this.snippet,
    required this.url,
  });

  /// From json
  factory FastGptReference.fromJson(Map<String, dynamic> json) =>
      _$FastGptReferenceFromJson(json);

  /// To json
  Map<String, dynamic> toJson() => _$FastGptReferenceToJson(this);
}
