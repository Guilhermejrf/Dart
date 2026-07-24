import 'package:flutter/material.dart';

class TelaContato extends StatelessWidget {
  const TelaContato({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        foregroundColor: Colors.white,
        title: const Text("Contato"),
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
