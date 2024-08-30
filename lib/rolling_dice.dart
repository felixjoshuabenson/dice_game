import 'dart:math';

import 'package:flutter/material.dart';

class RollingDice extends StatefulWidget {
  const RollingDice({super.key});

  @override
  State<RollingDice> createState() => _RollingDiceState();
}

class _RollingDiceState extends State<RollingDice> {
  var role1 = 'assets/images/dice-1.256x256.png';
  var role2 = 'assets/images/dice-2.256x256.png';

  final worksBetter = Random();

  void roleDice() {
    var rollHelp1 = worksBetter.nextInt(6) + 1;
    var rollHelp2 = worksBetter.nextInt(6) + 1;

    setState(() {
      role1 = 'assets/images/dice-$rollHelp1.256x256.png';
      role2 = 'assets/images/dice-$rollHelp2.256x256.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            role1,
            width: 120,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: roleDice,
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 61, 59, 59),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text(
            'Roll Dice',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          role2,
          width: 120,
        )
      ],
    );
  }
}
