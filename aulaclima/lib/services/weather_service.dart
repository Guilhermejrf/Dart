import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherService {
  const WeatherService({this.client});

  final http.Client? client;

  static final Uri recifeWeatherUrl = Uri.parse(
    'https://api.open-meteo.com/v1/forecast?'
    'latitude=-8.05&longitude=-34.88&current=temperature_2m',
  );

  Future<num> fetchTemperature({Uri? url}) async {
    final uri = url ?? recifeWeatherUrl;
    final response = client == null
        ? await http.get(uri)
        : await client!.get(uri);

    if (response.statusCode != 200) {
      throw Exception('Resposta inv\u00E1lida da API.');
    }

    final data = jsonDecode(response.body) as Map<String, dynamic>;
    final current = data['current'] as Map<String, dynamic>?;
    final temperature = current?['temperature_2m'];

    if (temperature is! num) {
      throw Exception('Temperatura n\u00E3o encontrada.');
    }

    return temperature;
  }
}
