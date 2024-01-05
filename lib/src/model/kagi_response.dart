import 'package:kagi_api/src/model/kagi_error.dart';
import 'package:kagi_api/src/model/request_metadata.dart';

/// A response from the Kagi API
abstract class KagiResponse<T> {
  /// [RequestMetadata]
  final RequestMetadata meta;

  /// The response data if it exists
  final T? data;

  /// Error Object, if an error occurred
  final List<KagiError> error;

  /// Constructor
  const KagiResponse({
    required this.meta,
    this.data,
    this.error = const [],
  });
}
