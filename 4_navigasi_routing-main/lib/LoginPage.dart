import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: ElevatedButton(
          child: Text('Ke Dashboard'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/dashboards',
              arguments: "Bunga",
            );
          },
        ),
      ),
    );
  }
}
