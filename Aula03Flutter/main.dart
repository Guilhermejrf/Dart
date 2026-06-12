import 'package:flutter/material.dart';

  void main(){
    runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 153, 156, 132),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 141, 132, 47),
            title: const Text("Estou Lendo o Mangá Abaixo!",
             style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.bold,
             ),
           ),
          ),
          body: Column(
          children: [
            Center(
              child: Text("Chainsaw Man",
                style: TextStyle(
                  color:Color.fromARGB(255, 183, 185, 12),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text("Autor: Tatsuki Fujimoto",
                style: TextStyle(
                  color:Color.fromARGB(255, 65, 58, 3),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]
        ),
        ),
      )
    );
  }

// void main() -> runApp() -> MaterialApp() -> home:-> Scaffold()-> appBar: AppBar()-> title: const Text("Texto aqui")