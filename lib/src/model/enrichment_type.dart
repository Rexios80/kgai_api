/// The type of enrichment to perform.
enum EnrichmentType {
  /// Fetch enrichment results focused on general, non-commercial web content.
  web,

  /// Fetch enrichment results focused on non-commercial news and discussions.
  news;

  @override
  String toString() => name;
}
