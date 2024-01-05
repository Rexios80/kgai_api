/// Summarization engines
///
/// https://help.kagi.com/kagi/api/summarizer.html#summarization-engines
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
