import 'package:dart_playground/entries/05_navigation/user.dart';
import 'package:flutter/material.dart';

class FiveScreen extends StatelessWidget {
  const FiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> args =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;

    print(args);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('FiveScreen'), centerTitle: true),
        body: Container(
          color: Colors.deepPurple,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'FiveScreen',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, User('Lee', 'busan'));
                  },
                  child: const Text('Pop'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
