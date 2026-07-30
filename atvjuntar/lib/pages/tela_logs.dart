import 'package:flutter/material.dart';

class TelaLogs extends StatelessWidget {
  const TelaLogs({super.key});

  @override
  Widget build(BuildContext context) {
    final logs = [
      {
        "ip": "192.168.0.10",
        "usuario": "Guilherme",
        "horario": "24/07/2026 - 12:31:08",
        "justificativa": "Entrou na tela inicial para olhar os produtos.",
      },
      {
        "ip": "192.168.0.22",
        "usuario": "Maria",
        "horario": "24/07/2026 - 12:35:42",
        "justificativa": "Acessou a area de cadastro para testar o login.",
      },
      {
        "ip": "192.168.0.35",
        "usuario": "Davi",
        "horario": "24/07/2026 - 12:40:15",
        "justificativa": "Abriu a tela de logs para conferir as acoes.",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        // Esse titulo serve para mostrar em qual tela o usuario esta.
        title: const Text("Tela de Logs"),
        centerTitle: true,
      ),
      body: Padding(
        // Usei espacamento para nao deixar os textos colados nas bordas.
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: logs.length,
          itemBuilder: (context, index) {
            final log = logs[index];

            return Card(
              // O card separa cada log visualmente, ficando parecido com uma lista.
              margin: const EdgeInsets.only(bottom: 12),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("IP da maquina: ${log["ip"]}"),
                    Text("Quem realizou a acao: ${log["usuario"]}"),
                    Text("Horario, dia, minutos e segundos: ${log["horario"]}"),
                    Text("Justificativa: ${log["justificativa"]}"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
