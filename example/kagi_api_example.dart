import 'dart:io';

import 'package:kagi_api/kagi_api.dart';

void main() async {
  final token = File('example/secret').readAsStringSync();
  final kagi = Kagi(token: token);
  final answer = await kagi.fastGpt(query: 'What is the meaning of life?');
  print(answer.data?.output);
}
