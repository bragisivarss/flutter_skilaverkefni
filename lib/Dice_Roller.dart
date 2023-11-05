import 'dart:math';

import 'package:flutter/material.dart';


class DiceRoll extends StatefulWidget{
  const DiceRoll({super.key});

@override
State<DiceRoll> createState() {
  return _DiceRollState();
}
}

class _DiceRollState extends State<DiceRoll>{
final randomizer = Random();
var currentDice = 2;

  void rollDice() {
    setState((){
    currentDice = randomizer.nextInt(6) +1;
    });
  }


  @override
  Widget build(context) {
  return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/dice-$currentDice.png',
                width: 200,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: rollDice, 
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(219, 0, 0, 0),
                    backgroundColor: const Color.fromARGB(219, 108, 105, 110),
                  ),
                child: const Text('Roll Dice'),
                ),
              ],
            );
  }
}