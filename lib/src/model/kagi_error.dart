import 'package:json_annotation/json_annotation.dart';

part 'kagi_error.g.dart';

/// An error returned from the Kagi API
@JsonSerializable()
class KagiError {
  /// Error code
  final int code;

  /// Error message
  final String msg;

  /// Error reference
  final Object? ref;

  /// Constructor
  const KagiError({
    required this.code,
    required this.msg,
    required this.ref,
  });

  /// From json
  factory KagiError.fromJson(Map<String, dynamic> json) =>
      _$KagiErrorFromJson(json);

  /// To json
  Map<String, dynamic> toJson() => _$KagiErrorToJson(this);
}
