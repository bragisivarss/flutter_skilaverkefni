
import 'package:firs_app/Dice_Roller.dart';
import 'package:flutter/material.dart';

class ColorContainer extends StatelessWidget {
  const ColorContainer({super.key});


  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 72, 75, 204),
            Color.fromARGB(255, 141, 57, 231),
            Color.fromARGB(100, 50, 60, 70),
            Color.fromARGB(99, 52, 153, 141)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoll(),
      ),
    );
  }
}
