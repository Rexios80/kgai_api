/// The types of Kagi tokens
enum TokenType {
  /// A bot token
  bot;

  @override
  String toString() => switch (this) {
        bot => 'Bot',
      };
}
