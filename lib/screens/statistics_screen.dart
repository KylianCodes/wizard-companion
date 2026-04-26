import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Statistics')),
        body: Center(
        child: Column(
          children: [
            const Text('Statistics')
          ],
        ),
      ),
    );
  }
}