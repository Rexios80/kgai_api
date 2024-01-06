import 'dart:io';

import 'package:kagi_api/kagi_api.dart';
import 'package:test/test.dart';

void main() {
  final token = File('secret/secret').readAsStringSync();
  final kagi = Kagi(token: token);

  test('summarize', () async {
    final summary =
        await kagi.summarize(url: 'https://pub.dev/packages/rexios_lints');
    expect(summary.data?.output, isNotEmpty);
  });

  test('fastGpt', () async {
    final answer = await kagi.fastGpt(query: 'What is the meaning of life?');
    expect(answer.data?.output, isNotEmpty);
  });

  test(
    'search',
    () async {
      final search = await kagi.search(query: 'What is the meaning of life?');
      expect(search.data?.results, isNotEmpty);
    },
    skip: 'Invite only API',
  );

  test('enrich', () async {
    final enriched = await kagi.enrich(query: 'What is the meaning of life?');
    expect(enriched.data?.results, isNotEmpty);
  });
}
