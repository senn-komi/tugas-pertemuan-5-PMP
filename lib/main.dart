import 'package:flutter/material.dart';
import 'CounterMod.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => CounterMod(),
        '/counter': (context) => CounterMod(),
      },
    );
  }
}
