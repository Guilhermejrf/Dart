import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:aulaclima/pages/weather_page.dart';

void main() {
  testWidgets('mostra erro quando a consulta falha', (
    WidgetTester tester,
  ) async {
    final wrongUrl = Uri.parse(
      'https://api.open-meteo.com/v1/forecast-errada?'
      'latitude=-8.05&longitude=-34.88&current=temperature_2m',
    );

    await tester.pumpWidget(
      MaterialApp(
        home: WeatherPage(weatherUrl: wrongUrl),
      ),
    );

    await tester.tap(find.text('Buscar temperatura'));
    await tester.pump();
    await tester.pump();

    expect(find.text('Erro ao buscar temperatura.'), findsOneWidget);
  });
}
