import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  static const String city = 'Recife';
  static final Uri weatherUrl = Uri.parse(
    'chavedaapi'
    'latitude=-8.05&longitude=-34.88&current=temperature_2m',
  );

  bool _isLoading = false;
  String _message = 'Clique no bot\u00E3o para buscar a temperatura.';

  Future<void> _fetchTemperature() async {
    setState(() {
      _isLoading = true;
      _message = 'Carregando...';
    });

    try {
      final response = await http.get(weatherUrl);

      if (response.statusCode != 200) {
        throw Exception('Resposta inv\u00E1lida da API.');
      }

      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final current = data['current'] as Map<String, dynamic>?;
      final temperature = current?['temperature_2m'];

      if (temperature is! num) {
        throw Exception('Temperatura n\u00E3o encontrada.');
      }

      if (!mounted) return;

      setState(() {
        _message = 'Temperatura atual: ${temperature.toStringAsFixed(1)} \u00B0C';
      });
    } catch (_) {
      if (!mounted) return;

      setState(() {
        _message = 'Erro ao buscar temperatura.';
      });
    } finally {
      if (!mounted) return;

      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.inversePrimary,
        title: const Text('Clima Atual'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Cidade: $city',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: _isLoading ? null : _fetchTemperature,
              child: _isLoading
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text('Buscar temperatura'),
            ),
            const SizedBox(height: 24),
            Text(
              _message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
