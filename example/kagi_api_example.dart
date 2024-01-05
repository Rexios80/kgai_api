import 'dart:io';

import 'package:kagi_api/kagi_api.dart';

void main() async {
  final token = File('example/secret').readAsStringSync();
  final kagi = Kagi(token: token);
  final answer = await kagi.fastGpt(query: 'What is the meaning of life?');
  print(answer.data?.output);

  final summary = await kagi.summarize(
    url:
        'https://www.politico.eu/article/hydroxychloroquine-could-have-caused-17000-deaths-during-covid-study-finds/',
  );
  print(summary.data?.output);

  final enriched = await kagi.enrich(query: 'What is the meaning of life?');
  print(enriched.data?.results);
}
