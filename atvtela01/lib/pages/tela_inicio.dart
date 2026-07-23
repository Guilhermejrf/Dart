import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Loja de Valorant"),
        centerTitle: true,
      ),
      body: Padding(
  padding: const EdgeInsets.all(16),
  child: Column(
    children: [
    Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
    
      CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/VaStore.png"),
              ),
              const SizedBox(width: 15,),

              Icon(
                Icons.menu,
                size: 35,
              )
    ],
      ),
      
              const SizedBox(height: 16),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'images/Reaver-Phantom.webp',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/Elderflame-Vandal.webp',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ],
      ),

      const SizedBox(height: 20),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'images/Glitchpop-Vandal.webp',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/Oni-Phantom.webp',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ],
      ),

      const SizedBox(height: 20),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'images/Spectrum-Phantom.webp',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/Sentinels-Of-Light-Vandal.webp',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ],
      ),
    ],
  ),
),
);
  }
}
