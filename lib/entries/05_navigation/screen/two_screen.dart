import 'package:flutter/material.dart';

class TwoScreen extends StatelessWidget {
  const TwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int arg = ModalRoute.of(context)?.settings.arguments as int;

    print(arg);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('TwoScreen'), centerTitle: true),
        body: Container(
          color: Colors.green,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'TwoScreen',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/three',
                      arguments: {'arg1': 10, 'arg2': 'hello'},
                    );
                  },
                  child: const Text('Go Three'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/three');
                  },
                  child: const Text('Go Three no param'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, 'world');
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
