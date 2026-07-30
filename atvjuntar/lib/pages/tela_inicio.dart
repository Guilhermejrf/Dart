import 'package:flutter/material.dart';

import 'tela_logs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Loja de Valorant'), centerTitle: true),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey.shade900,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const TelaLogs()),
              );
            },
            child: const Text('Tela de Logs'),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
         child: Column(
          children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/VaStore.png'),
                  ),
                  SizedBox(width: 15),
                  Icon(Icons.menu, size: 35),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: GridView.count(
                    padding: const EdgeInsets.all(12),
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio:
                        MediaQuery.of(context).size.width > 600 ? 4.5 : 1.0,
                    children: [
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Reaver-Phantom.webp',
                              width: 180,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                            const Text('Reaver-Phantom'),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Elderflame-Vandal.webp',
                              width: 180,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                            const Text('Elderflame-Vandal'),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Glitchpop-Vandal.webp',
                              width: 180,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                            const Text('Glitchpop-Vandal'),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Oni-Phantom.webp',
                              width: 180,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                            const Text('Oni-Phantom'),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Spectrum-Phantom.webp',
                              width: 180,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                            const Text('Spectrum-Phantom'),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Sentinels-Of-Light-Vandal.webp',
                              width: 180,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                            const Text('Sentinels-Of-Light-Vandal'),
                          ],
                        ),
                      ),
                    ],
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
