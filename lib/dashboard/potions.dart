import 'package:flutter/material.dart';
import 'package:harry_potter/potterthemes.dart';

class Potions extends StatefulWidget {
  @override
  const Potions({super.key});

  @override
  State<StatefulWidget> createState() {
    return PotionsState();
  }
}

class PotionsState extends State<Potions> {
  @override
  Widget build(BuildContext context) {
    var theme = PotterTheme.dark();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(
          "Potion Collection",
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
