/// Summary types
///
/// https://help.kagi.com/kagi/api/summarizer.html#summary-types
sealed class SummaryType {
  SummaryType._();

  /// Paragraph(s) of summary prose
  ///
  /// The default summary type
  static const summary = 'summary';

  /// Bulleted list of key points
  static const takeaway = 'takeaway';
}
