import 'package:flutter/material.dart';
import 'package:harry_potter/potterthemes.dart';

class Spells extends StatefulWidget {
  @override
  const Spells({super.key});

  @override
  State<StatefulWidget> createState() {
    return SpellsState();
  }
}

class SpellsState extends State<Spells> {
  @override
  Widget build(BuildContext context) {
    var theme = PotterTheme.dark();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(
          "Magic Spells",
          style: theme.textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("assets/images/potter-portrait-display.jpg"),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Center(
              //A Welcome Text

              ),
        ),
      ),
    );
  }
}
