import 'package:_testing_button/LoginPage.dart';
import 'package:flutter/material.dart';
import 'DashboardPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/dashboards': (context) => DashboardPage(),
      },
    );
  }
}
