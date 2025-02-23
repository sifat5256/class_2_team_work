import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  // Variable to hold the counter value
  int _counter = 0;

  // Method to increment the counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Stateful Widget Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display the counter
            Text(
              'You have pressed the button this many times:',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text('$_counter', style: Theme.of(context).textTheme.headline4),
            const SizedBox(height: 20),
            // Button to increment the counter
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
