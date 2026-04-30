import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  // DashboardPage({required this.username});

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        // automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hallo, $username"),
            ElevatedButton(
              child: Text('Kembali ke Home'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
