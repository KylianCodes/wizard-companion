import 'package:flutter/material.dart';

class GameSetupScreen extends StatefulWidget {
  const GameSetupScreen({super.key});

  @override
  State<GameSetupScreen> createState() => _GameSetupScreenState();
}

class _GameSetupScreenState extends State<GameSetupScreen> {
  int _playerCount = 3;
  List<TextEditingController> _controllers = [];
  final ButtonStyle activeStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.deepPurple,
  );
  final ButtonStyle inactiveStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Setup')),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => _setPlayerCount(3),
                  style: _playerCount == 3 ? activeStyle : inactiveStyle,
                  child: Text('3'),
                ),
                ElevatedButton(
                  onPressed: () => _setPlayerCount(4),
                  style: _playerCount == 4 ? activeStyle : inactiveStyle,
                  child: Text('4'),
                ),
                ElevatedButton(
                  onPressed: () => _setPlayerCount(5),
                  style: _playerCount == 5 ? activeStyle : inactiveStyle,
                  child: Text('5'),
                ),
                ElevatedButton(
                  onPressed: () => _setPlayerCount(6),
                  style: _playerCount == 6 ? activeStyle : inactiveStyle,
                  child: Text('6'),
                ),
              ],
            ),
            ...List.generate(_playerCount, (i) => TextField(
              controller: _controllers[i]
            )),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Start Game'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < _playerCount; i++) {
      _controllers.add(TextEditingController());
    }
  }

  @override
  void dispose() {
    super.dispose();
    for (var c in _controllers) {
      c.dispose();
    }
  }

  void _setPlayerCount(int n) {
    setState(() {
      for (var c in _controllers) c.dispose();
      _playerCount = n;
      _controllers = List.generate(n, (_) => TextEditingController());
    });
  }
}
