import 'package:dart_playground/entries/05_navigation/user.dart';
import 'package:flutter/material.dart';

class FourScreen extends StatelessWidget {
  const FourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('FourScreen'), centerTitle: true),
        body: Container(
          color: Colors.cyan,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'FourScreen',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final result = await Navigator.pushNamed(
                      context,
                      '/five',
                      arguments: {
                        'arg1': 10,
                        'arg2': 'hello',
                        'arg3': User('BM', 'seoul'),
                      },
                    );

                    print('result: ${(result as User).name}');
                  },
                  child: const Text('Go Five'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
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
