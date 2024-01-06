import 'dart:io';

import 'package:kagi_api/kagi_api.dart';

void main() async {
  final token = File('secret/secret').readAsStringSync();
  final kagi = Kagi(token: token);
  final answer = await kagi.fastGpt(query: 'What is the meaning of life?');
  print(answer.data?.output);

  final summary =
      await kagi.summarize(url: 'https://pub.dev/packages/rexios_lints');
  print(summary.data?.output);

  final enriched = await kagi.enrich(query: 'What is the meaning of life?');
  print(enriched.data?.results);
}
