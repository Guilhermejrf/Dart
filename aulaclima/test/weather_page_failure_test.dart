import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:aulaclima/pages/weather_page.dart';
import 'package:aulaclima/services/weather_service.dart';

class FailingWeatherService extends WeatherService {
  const FailingWeatherService();

  @override
  Future<num> fetchTemperature({Uri? url}) async {
    throw Exception('Falha simulada.');
  }
}

void main() {
  testWidgets('mostra erro quando a consulta falha', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: WeatherPage(weatherService: FailingWeatherService()),
      ),
    );

    await tester.tap(find.text('Buscar temperatura'));
    await tester.pump();
    await tester.pump();

    expect(find.text('Erro ao buscar temperatura.'), findsOneWidget);
  });
}
