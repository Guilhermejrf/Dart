import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

void main() {
  final weatherUrl = Uri.parse(
    'https://api.open-meteo.com/v1/forecast?'
    'latitude=-8.05&longitude=-34.88&current=temperature_2m',
  );

  test('API responde com uma temperatura numerica', () async {
    final response = await http.get(weatherUrl);
    final data = jsonDecode(response.body) as Map<String, dynamic>;
    final current = data['current'] as Map<String, dynamic>?;
    final temperature = current?['temperature_2m'];

    expect(response.statusCode, 200);
    expect(temperature, isNotNull);
    expect(temperature, isA<num>());
  });

  test('URL incorreta gera erro', () async {
    final wrongUrl = Uri.parse(
      'https://api.open-meteo.com/v1/forecast-errada?'
      'latitude=-8.05&longitude=-34.88&current=temperature_2m',
    );

    expect(
      (await http.get(wrongUrl)).statusCode,
      isNot(200),
    );
  });
}
