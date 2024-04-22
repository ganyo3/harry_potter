import 'package:flutter/material.dart';
import 'index.dart';

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
