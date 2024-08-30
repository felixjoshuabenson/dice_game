import 'package:dice_game/rolling_dice.dart';
import 'package:flutter/material.dart';

const theStart = Alignment.topLeft;
const theEnd = Alignment.bottomRight;

class MyThemeColor extends StatelessWidget {
  const MyThemeColor(this.color1, this.color2, {super.key});
  final dynamic color1;
  final dynamic color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: theStart,
          end: theEnd,
        ),
      ),
      child: const RollingDice(),
    );
  }
}
