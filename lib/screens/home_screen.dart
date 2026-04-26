import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wizard Companion')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Nouvelle partie')),
            ElevatedButton(onPressed: () {}, child: Text('Historique')),
            ElevatedButton(onPressed: () {}, child: Text('Statistiques')),
          ],
        ),
      ),
    );
  }
}
