import 'package:dice_game/my_theme_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Dice Game',
    home: Scaffold(
      body: MyThemeColor(
          Color.fromARGB(255, 18, 32, 58), Color.fromARGB(255, 169, 162, 189)),
    ),
  ));
}
