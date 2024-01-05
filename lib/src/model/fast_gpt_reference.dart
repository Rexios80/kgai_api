import 'package:json_annotation/json_annotation.dart';

part 'fast_gpt_reference.g.dart';

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
