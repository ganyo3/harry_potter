import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

  class HomePageState extends State<HomePage>{
    @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       debugShowCheckedModeBanner: false,
     home: Scaffold(
      appBar: AppBar(
         title: const Text("The Harry Potter Insight",
         style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          fontStyle: FontStyle.italic,
       ),
         ),
         centerTitle: true,
      ),
     )
    );
    }
  }
