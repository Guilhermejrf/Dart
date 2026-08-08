import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Ícones')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home, size: 40),
              Icon(Icons.person, size: 40),
              IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
