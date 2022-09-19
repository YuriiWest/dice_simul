import 'package:dice_simul/dice_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text("Roll The Dice")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: DiceWidget()),
          ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed("/secScreen"),
              child: Text(">_<"))
        ],
      ),
    );
  }
}
