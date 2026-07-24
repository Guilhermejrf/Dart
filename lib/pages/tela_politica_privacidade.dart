import 'package:flutter/material.dart';

class TelaPoliticaPrivacidade extends StatelessWidget {
  const TelaPoliticaPrivacidade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        foregroundColor: Colors.white,
        title: const Text("Politica de Privacidade"),
      ),
      body: const Center(
        child: Text(
          "teste",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
