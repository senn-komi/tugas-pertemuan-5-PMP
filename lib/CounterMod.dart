import 'package:flutter/material.dart';

class CounterMod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  void reset() {
    setState(() {
      counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter & setState()'),
        backgroundColor: Colors.blue,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter", style: TextStyle(fontSize: 28)),
            SizedBox(height:10),
            Text(
              "$counter",
              style:TextStyle(fontSize:48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: increment,
              icon: Icon(Icons.add),
              label: Text("Add"),
            ),

             SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: decrement,
              icon: Icon(Icons.remove),
              label: Text("Subtract"),
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: reset,
              icon: Icon(Icons.refresh),
              label: Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}