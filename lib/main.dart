import 'package:dart_playground/entries/05_navigation/screen/four_screen.dart';
import 'package:dart_playground/entries/05_navigation/screen/one_screen.dart';
import 'package:dart_playground/entries/05_navigation/screen/three_screen.dart';
import 'package:dart_playground/entries/05_navigation/screen/two_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/one',
      routes: {
        '/one': (context) => const OneScreen(),
        '/two': (context) => const TwoScreen(),
        '/three': (context) => const ThreeScreen(),
        '/four': (context) => const FourScreen(),
      },
    );
  }
}
