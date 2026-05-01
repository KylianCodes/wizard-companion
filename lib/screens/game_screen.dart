import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {

  final List<String> playerNames;
  const GameScreen({super.key, required this.playerNames});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game')),
      body: Center(child: Text("Game is here."))
    );
  }
}
