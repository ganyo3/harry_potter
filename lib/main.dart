import 'package:flutter/material.dart';
import 'package:harry_potter/index.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Harry Potter",
      home: HomePage()));
}

class HarryPotter extends StatefulWidget {
  @override
  const HarryPotter({super.key});

  @override
  State<StatefulWidget> createState() {
    return HarryPotterState();
  }
}

class HarryPotterState extends State<HarryPotter> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}

//flutter docs
//colors: (maroune red,gold/amber,black/grey and white) Theming
//screens(welcome/login/signup/darshboard(bottons)/gallery.
//characters, potions,spells, wands,movies,books
//Harry Potter API (getting information online)

//Protest Revolution, Protest riot,Protest Guerrilla,GreatVibes
//Rubik Glitch Pop, Creepster