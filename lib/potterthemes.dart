import 'package:flutter/material.dart';

harryPotterTheme() {
  ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.lightBlue[800],
    useMaterial3: true,
    textTheme: const TextTheme(
        titleMedium: TextStyle(
          fontSize: 75,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.blue,
        ),
        bodySmall: TextStyle(
          fontSize: 25,
          fontStyle: FontStyle.normal,
        ),
        bodyLarge: TextStyle(
          fontSize: 25,
          fontStyle: FontStyle.normal,
          color: Colors.white,
        )),
  );

  return harryPotterTheme();
}
