import 'package:flutter/material.dart';

class TelaTermos extends StatelessWidget {
  const TelaTermos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        foregroundColor: Colors.white,
        title: const Text("Termos de Uso"),
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
