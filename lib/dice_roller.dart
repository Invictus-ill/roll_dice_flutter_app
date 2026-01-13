import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int diceRoll = 1;

  void rollDice() {
    setState(() {
      diceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 20,
      children: [
        Image.asset("assets/images/dice-$diceRoll.png", width: 200),
        OutlinedButton(
          onPressed: rollDice,
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.all(20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: Text('Press Button'),
        ),
      ],
    );
  }
}
