import 'package:flutter/material.dart';
import 'home_page.dart' as admin;
import 'tela_contato.dart';
import 'tela_inicio.dart';
import 'tela_politica_privacidade.dart';
import 'tela_termos.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final _formKey = GlobalKey<FormState>();

  bool aceitouTermos = false;
  bool aceitouPolitica = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        foregroundColor: Colors.white,
        title: const Text("Cadastro"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/VaStore.png"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: const TextStyle(color: Colors.blue),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey.shade900,
                      width: 2,
                    ),
                  ),
                  border: const OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Digite seu email";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: const TextStyle(color: Colors.blue),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey.shade900,
                      width: 2,
                    ),
                  ),
                  border: const OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Digite sua senha";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: const Text("Entrar"),
                  ),
                  const SizedBox(width: 12),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const admin.HomePage(),
                        ),
                      );
                    },
                    child: const Text("Entrar como admin"),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.blue,
                    shape: const CircleBorder(),
                    value: aceitouTermos,
                    onChanged: (value) {
                      setState(() {
                        aceitouTermos = value ?? false;
                      });
                    },
                  ),
                  const Text("Aceito os "),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TelaTermos(),
                        ),
                      );
                    },
                    child: const Text("termos de uso"),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.blue,
                    shape: const CircleBorder(),
                    value: aceitouPolitica,
                    onChanged: (value) {
                      setState(() {
                        aceitouPolitica = value ?? false;
                      });
                    },
                  ),
                  const Text("Aceito a "),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TelaPoliticaPrivacidade(),
                        ),
                      );
                    },
                    child: const Text("politica de privacidade"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey.shade900,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaContato(),
                    ),
                  );
                },
                child: const Text("Contato"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
