import 'package:flutter/material.dart';

import 'cadastro_page.dart';
import 'tela_auditoria.dart';
import 'tela_configuracoes.dart';
import 'tela_menu_nav.dart';
import 'tela_produtos.dart';
import 'tela_relatorios.dart';
import 'tela_usuarios.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gerenciamento de Usuários"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
            tooltip: "Adicionar",
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.upload_file),
            tooltip: "Exportar",
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
            tooltip: "Atualizar",
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const CadastroPage(),
                ),
              );
            },
            icon: const Icon(Icons.logout),
            tooltip: "Logout",
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text(
                  "Menu",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text("Dashboard"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaMenuNav(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.people),
              title: const Text("Usuários"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaUsuarios(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text("Produtos"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaProdutos(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.bar_chart),
              title: const Text("Relatórios"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaRelatorios(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Configurações"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaConfiguracoes(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.fact_check),
              title: const Text("Auditoria"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaAuditoria(),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text(
          "Sistema só que a parte de admin",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
