import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  late int currentDiceRoll;

  @override
  void initState() {
    super.initState();
    rollDice();
  }

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.orange, // Cambio de color a naranja
            textStyle: const TextStyle(
              fontSize: 40,
            ),
          ),
          child: const Text(
            'Lanzar Dado', // Cambio de texto
            style: TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }
}