import 'package:flutter_test/flutter_test.dart';

import 'package:aulaclima/services/weather_service.dart';

void main() {
  test('API responde com uma temperatura numerica', () async {
    final temperature = await const WeatherService().fetchTemperature();

    expect(temperature, isNotNull);
    expect(temperature, isA<num>());
  });

  test('URL incorreta gera erro', () async {
    final wrongUrl = Uri.parse(
      'https://api.open-meteo.com/v1/forecast-errada?'
      'latitude=-8.05&longitude=-34.88&current=temperature_2m',
    );

    expect(
      const WeatherService().fetchTemperature(url: wrongUrl),
      throwsA(isA<Exception>()),
    );
  });
}
