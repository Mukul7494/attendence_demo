import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('Testing'),
          backgroundColor: Colors.deepPurple,
        ),
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
