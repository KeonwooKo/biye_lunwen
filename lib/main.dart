import 'package:biye_lunwem/screens/Home_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          backgroundColor: const Color.fromARGB(255, 248, 247, 247),
          cardColor: Colors.white,
          canvasColor: const Color.fromARGB(255, 221, 218, 218)),
      home: const HomeScreen(),
    );
  }
}
