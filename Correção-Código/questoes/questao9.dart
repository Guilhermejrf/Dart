import 'package:flutter/material.dart';

void main() {
  runApp(const Aplicativo());
}

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Layout')),
        body: Column(
          children: [
            const Text('Perfil do usuário'),
            Row(children: const [Icon(Icons.person), Text('João')]),
            Container(
              width: 200,
              height: 100,
              child: const Text('Informações do usuário'),
            ),
          ],
        ),
      ),
    );
  }
}
