import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const CadastroPage());
  }
}

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Criar uma nova conta', style: TextStyle(fontSize: 24)),
            Image.asset('assets/imagens/perfil.png', width: 150),
            const TextField(
              decoration: InputDecoration(labelText: 'Digite seu nome'),
            ),
            TextField(decoration: InputDecoration(labelText: 'E-mail')),
            ElevatedButton(onPressed: () {}, child: const Text('Cadastrar')),
          ],
        ),
      ),
    );
  }
}
