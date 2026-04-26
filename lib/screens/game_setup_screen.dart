import 'package:flutter/material.dart';

class GameSetupScreen extends StatelessWidget {
  const GameSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Setup')),
      body: Center(
        child: Column(
          children: [
            const Text('Setup')
          ],
        ),
      ),
    );
  }
}
