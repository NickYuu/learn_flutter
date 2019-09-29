import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('First APP'),
      ),
      body: HomePage(),
    ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello Flutter.',
        style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.blue,
            color: Colors.white),
      ),
    );
  }
}
