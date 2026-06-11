import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Estou Lendo o Mangá Abaixo! (E gostaria de aprender a Língua abaixo também)"),
        ),
        body: const Center(
        child: Text("Chainsaw Man",
        style: TextStyle(
          color:Color.fromARGB(255, 183, 185, 12),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
                ),
        
      ),
      ),
    )
  );
}

// void main() -> runApp() -> MaterialApp() -> home:-> Scaffold()-> appBar: AppBar()-> title: const Text("Texto aqui")
